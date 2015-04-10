ionic-resetfield
================

Angularjs ionic directive to enable reset-field on your form element

Inspired by [angular-resetfield](https://github.com/amageed/angular-resetfield)

#### Install:

* `bower install ionic-resetfield` Install with `bower`

#### Usage:

Include the `ionic.resetfield` module into your app

```JavaScript
app.module('myApp', ['ionic.resetfield'])
```

In your template

```
<input reset-field>
```

To select which icon to use (defaults to ion-ios7-close).

```
<input reset-field="ion-close">
```

#### Build:

* `npm install` Install coffeescript and uglify
* `make all` Build js file and compress

#### License

MIT