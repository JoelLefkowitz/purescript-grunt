# Grunt preparser

PureScript FFI bindings for Grunt

## Status

| Source  | Shields                                                        |
| ------- | -------------------------------------------------------------- |
| Project | ![license][license] ![release][release]                        |
| Raised  | [![issues][issues]][issues_link] [![pulls][pulls]][pulls_link] |

## Usage

* Grunt.Types mirrors the un-curried foreign types
* Grunt.Methods allows purescript native way of configuring a gruntfile
* Grunt.Gruntfile writes bindings to a gruntfile

To build the main module:

```bash
spago bundle-module --to dist/Gruntfile.js
```

The gruntfile should contain this line:

```js
module.exports = require(\"dist/Gruntfile.js\").main
```

It is necessary to bundle as a module not an app so that we may have the gruntfile re-export the main method as the only export.

## Documentation

Additional details are available in the [documentation][documentation]

## Changelog

Please read [CHANGELOG.md](CHANGELOG.md) for details on changes that have been made.

## Versioning

[SemVer][semver] is used for versioning. For a list of versions available, see the tags on this repository.

Bump2version is used to version and tag changes.
For example:

```bash
bump2version patch
```

Releases are made on every minor change.

## Author

-   **Joel Lefkowitz** - _Initial work_ - [Joel Lefkowitz][author]

See also the list of contributors who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests.

## Acknowledgments

None yet!

[license]: https://img.shields.io/github/license/joellefkowitz/purescript-grunt
[release]: https://img.shields.io/github/v/tag/joellefkowitz/purescript-grunt
[issues]: https://img.shields.io/github/issues/joellefkowitz/purescript-grunt "Issues"
[issues_link]: https://github.com/JoelLefkowitz/purescript-grunt/issues
[pulls]: https://img.shields.io/github/issues-pr/joellefkowitz/purescript-grunt "Pull requests"
[pulls_link]: https://github.com/JoelLefkowitz/purescript-grunt/pulls
[author]: https://github.com/JoelLefkowitz
[semver]: http://semver.org/
[documentation]: https://purescript-grunt.readthedocs.io/en/latest/
