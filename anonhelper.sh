#!/bin/bash

function anonhelp() {
  echo "anonupload:upload a file to anonfiles syntax: upload filename.txt"
  echo "anoninfo: get info about a file uploaded on anonfiles syntax: info fileid"
}

function anonupload() {
  curl -F "file=@$1" https://api.anonfiles.com/upload
}


function anoninfo() {
  curl https://api.anonfiles.com/v2/file/$1/info
}
