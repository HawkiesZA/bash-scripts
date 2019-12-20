# Copy these scripts into your .bashrc file

alias k="kubectl"

# Look for pods named with a given sequence
kgp () {
    kubectl get pods | grep "$1"
}

# Get the logs for a given pod
kl () {
    kubectl logs "$1"
}

dev () {
        kubectl config use-context <your dev context here>
}

prod () {
    kubectl config use-context <your prod context here>
}

# Switch between your gcloud accounts
switch-gcloud-account () {
    myaccount=$(gcloud config get-value core/account 2> /dev/null)
    if [ $myaccount = <your account here> ]
    then
        echo switching to <account>
        gcloud config set account <account to change to>
        gcloud config set project <project to change to>
    else
        echo switching to <account>
        gcloud config set account <account to change to>
        gcloud config set project <project to change to>
    fi
}

# Download a song from YouTube given just the URL
get-song() {
        youtube-dl -x --audio-format mp3 $1
}