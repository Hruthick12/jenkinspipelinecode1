def deploy_tomcat() {

    echo "deploying to tomcat server."
    //echo "env is ${env}"
    sh """
       #echo "WORKSPACE is "
       #echo "environment is $env'"
       cd ${WORKSPACE}/shellscripts
       sh ./deploy_java.sh 
       """
}
return this