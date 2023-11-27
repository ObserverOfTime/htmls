require! {
  LiveScript: lsc
  \shelljs/make
  path: {join}
}

ext = /\.ls$/
just-copy = /^_/

target.all = !->
  console.log 'Compiling LiveScript to JavaScript...'
  files = ls \-R \src
  if test \-e \lib then rm \-r \lib
  mkdir \lib
  for file in files
    if file.match ext and !file.match just-copy
      _in = cat join \src/ file
      _out = join \lib/ file.replace ext, \.js
      lsc.compile _in, {+bare} .to _out
    else if file.match just-copy
      _in = join \src/ file
      _out = join \lib/ file
      cp _in, _out
    else
      mkdir \-p "lib/#file"
