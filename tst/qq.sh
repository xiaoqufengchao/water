if [ "$TRAVIS_OS_NAME" == "osx" ]; then
     sh compare.sh hello
else
  echo "ELSE!"
fi

$SHELL
