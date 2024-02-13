load = require \./load
require \chai .should!

suite 'XML templates' !->

  test 'should support basic nodes' !->
    {tmpl, xml, pretty} = load \document \xml

    tmpl {} .should.equal xml

    tmpl {} {+pretty} .should.equal pretty
