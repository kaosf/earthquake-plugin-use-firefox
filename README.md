# earthquake.gem plugin "use-firefox"

This is a plugin for [Earthquake](https://github.com/jugyo/earthquake).

Provide the commands `:openfirefox` and `browsefirefox`, and their shortcuts of
`:of` and `:brf`.

These commands force earthquake.gem to use Firefox.

## Installation

Plugin code is [here (https://gist.github.com/kaosf/701e8c2f37b21e5eb7c8)](https://gist.github.com/kaosf/701e8c2f37b21e5eb7c8).

Run the following command on earthquake.

```
⚡ :plugin_install https://gist.github.com/701e8c2f37b21e5eb7c8
```

## Usage

```
⚡ :openfirefox $ab
⚡ :of $ac
⚡ :browsefirefox $xy
⚡ :brf $yz
```

## References

### About `:of`

[earthquake/lib/earthquake/commands.rb at 3b41d3cec2305431d06405a465dd85f08780cc7b · jugyo/earthquake](https://github.com/jugyo/earthquake/blob/3b41d3cec2305431d06405a465dd85f08780cc7b/lib/earthquake/commands.rb#L428-L439)

### About `:brf`

[earthquake/lib/earthquake/commands.rb at 3b41d3cec2305431d06405a465dd85f08780cc7b · jugyo/earthquake](https://github.com/jugyo/earthquake/blob/3b41d3cec2305431d06405a465dd85f08780cc7b/lib/earthquake/commands.rb#L443-L451)

## License

[MIT](http://opensource.org/licenses/MIT)

Copyright (C) 2014 ka
