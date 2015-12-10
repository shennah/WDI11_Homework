const test = require('tape');
const Hello = require('../scripts/Hello');

test('Hello', function(t) {
    t.ok(Hello instanceof Function, 'should be a function')
    t.end()
  }
);
