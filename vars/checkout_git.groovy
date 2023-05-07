def checkout_git(String repo){

    echo "this is for checking out git code."
            git credentialsId: 'githubaccess', url:"git@github.com:Hruthick12/${repo}.git"

}
return this