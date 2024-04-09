[sxdg](https://rubygems.org/gems/sxdg) is a very small and simple implementation of XDG Base Directory Specification yet useful when it's [too constraining](https://github.com/bkuhlmann/xdg/issues/8) to use the much powerful [xdg](https://rubygems.org/gems/xdg).

The gem is still available on [RubyGems](https://rubygems.org/gems/sxdg) but the [source code repository](https://github.com/vthrenody/sxdg) disappeared. There is one snapshot of the repository on the [WayBackMachine](http://web.archive.org/web/20180613002509/https://github.com/vthrenody/sxdg), but that's only giving the README as the code itself is not saved. There was no fork of the repository. On RubyGems the author is named _Robin Owen_ and the Github handle is `vthrenody`, so I looked at Gitlab if a similar user exists, and it does: https://gitlab.com/vthrenody but there is no code on it. [The twitter](https://twitter.com/vthrenody) was also deleted. There is really no backup of the gem and the author gone dark. So I decided retrieve the code from the gem and put it back here as an archive, so everyone can easily read the code.

Here is the method I used to retrieve the code.

```sh
wget https://rubygems.org/downloads/sxdg-1.0.0.gem
7z l sxdg-1.0.0.gem
tar xaf data.tar.gz
```

The only modification I made is this disclaimer on the README. I'll archive this repository as I don't plan to create evolutions or add new features and has no dependency or code that would require maintenance.

Below is the original README.

---

# sxdg

`sxdg` is an extremely tiny, simple library allowing for easy conformance with
the XDG Base Directory Specification.

## License

`sxdg` is free and unencumbered software released into the public domain.
