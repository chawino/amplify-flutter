// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

@TestOn('vm')

import 'dart:io';

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

void main() {
  const accessKeyId = 'accessKeyId';
  const secretAccessKey = 'secretAccessKey';
  const sessionToken = 'sessionToken';

  group('AWSCredentialsProvider', () {
    test('profile', () async {
      final tempDir = await Directory.systemTemp.createTemp();
      final awsDir =
          await Directory.fromUri(tempDir.uri.resolve('.aws')).create();
      final credentialsFile = File.fromUri(awsDir.uri.resolve('credentials'));
      await credentialsFile.writeAsString(
        '''
[default]
aws_access_key_id = $accessKeyId
aws_secret_access_key = $secretAccessKey
aws_session_token = $sessionToken
''',
      );

      const credentialsProvider = AWSCredentialsProvider.profile();
      final credentials = await overrideEnvironment(
        {'HOME': tempDir.path},
        credentialsProvider.retrieve,
      );
      expect(
        credentials,
        const AWSCredentials(
          accessKeyId,
          secretAccessKey,
          sessionToken,
        ),
      );
    });
  });
}
