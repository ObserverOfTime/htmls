load = require \./load
require \chai .should!

suite 'HTML templates' !->

  test 'should support doctype, simple tags and string content' !->
    {tmpl, html, pretty} = load \plain \html

    tmpl {} .should.equal html

    tmpl {} {+pretty} .should.equal pretty

  test 'should work with simple for loops' !->
    {tmpl, html, pretty} = load \simple-loop \html

    tmpl {number: 3} .should.equal html

    tmpl {number: 3} {+pretty} .should.equal pretty
