require! {
  shelljs: {cat}
  '../src': htmls
}

read = -> cat it .replace /\r\n|\r/g \\n

module.exports = (name, ext) -> do
  tmpl: htmls read "test/templates/#name.htmls"
  "#ext": read "test/output/#name.#ext"
  pretty: read "test/output/#{name}_pretty.#ext"
