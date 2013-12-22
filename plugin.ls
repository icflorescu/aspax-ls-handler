require! {
  fs
  live: LiveScript
}

exports.compile = (file, flags, callback) ->
  err, contents <- fs.read-file file, \utf8
  return callback err if err
  try
    output = live.compile contents, bare: \bare in flags
  catch err
    return callback err
  callback null, output
