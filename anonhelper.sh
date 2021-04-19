#!/bin/bash

function anonhelp() {
  echo "upload:upload a file to anonfiles syntax: upload filename.txt"
  echo "info: get info about a file uploaded on anonfiles syntax: info fileid"
}

function anonupload() {
  curl -F "file=@$1" https://api.anonfiles.com/upload
}


function anoninfo() {
  curl https://api.anonfiles.com/v2/file/$1/info
}
