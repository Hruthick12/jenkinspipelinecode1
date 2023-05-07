pipeline {
    agent any
   stages {
        stage('pull code from github') {
            steps {
                git credentialsId:'githubaccess',url:'git@github.com:Hruthick12/simple-java-maven-app.git'
            }
            }
            stage('triggering aws code build project'){
                steps{
                    awsCodeBuild artifactEncryptionDisabledOverride: '', artifactLocationOverride: '', artifactNameOverride: '', artifactNamespaceOverride: '', artifactPackagingOverride: '', artifactPathOverride: '', artifactTypeOverride: '', awsAccessKey: '', awsSecretKey: '', buildSpecFile: '', buildTimeoutOverride: '', cacheLocationOverride: '', cacheModesOverride: '', cacheTypeOverride: '', certificateOverride: '', cloudWatchLogsGroupNameOverride: '', cloudWatchLogsStatusOverride: '', cloudWatchLogsStreamNameOverride: '', computeTypeOverride: '', credentialsId: 'awscodebuild', credentialsType: 'jenkins', cwlStreamingDisabled: '', downloadArtifacts: 'false', downloadArtifactsRelativePath: '', envParameters: '', envVariables: '', environmentTypeOverride: '', exceptionFailureMode: '', gitCloneDepthOverride: '', imageOverride: '', insecureSslOverride: '', localSourcePath: '', overrideArtifactName: '', privilegedModeOverride: '', projectName: 'java-project', proxyHost: '', proxyPort: '', region: 'us-east-1', reportBuildStatusOverride: '', s3LogsEncryptionDisabledOverride: '', s3LogsLocationOverride: '', s3LogsStatusOverride: '', secondaryArtifactsOverride: '', secondarySourcesOverride: '', secondarySourcesVersionOverride: '', serviceRoleOverride: '', sourceControlType: 'jenkins', sourceLocationOverride: '', sourceTypeOverride: '', sourceVersion: '', sseAlgorithm: '', workspaceExcludes: '', workspaceIncludes: '', workspaceSubdir: ''
                }
            }
   }
   post{
       success{
           sh 'echo "hi,This Build is successful. please check below logs for same." | mailx -vvv -s "Build logs for ${JOB_NAME}" -a /var/lib/jenkins/jobs/awscodebuildpipeline/builds/${BUILD_NUMBER}/log "hruthickreddy12@gmail.com"'
          // emailext attachLog: true, body: 'Hi this is my test mail', subject: 'test mail', to: 'hruthickreddy12@gmail.com'
       }
       failure{
           sh 'echo "This Build is failure" | mailx -vvv -s "Build status " hruthickreddy12@gmail.com'
       }
   }
}
