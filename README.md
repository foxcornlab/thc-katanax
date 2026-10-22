<h1 align="center">K A T A N A X</h1>

<h4 align="center">A next-generation crawling and spidering framework, <code>Foxcorn Lab</code> edition</h4>

<p align="center">
  <a href="#features">Features</a> •
  <a href="#install">Install</a> •
  <a href="#usage">Usage</a> •
  <a href="https://github.com/foxcornlab/thc-katanax/issues">Issues</a>
</p>

`thc-katanax` is a fork of [projectdiscovery/katana](https://github.com/projectdiscovery/katana) (`v1.8.0`), rebased clean and rebranded for `Foxcorn Lab`. Crawler core is byte-identical to upstream — this fork exists for a maintained build under our org with the update hook repointed to our releases.

# `Features`

- **Fast and fully configurable web crawling**
- **`Standard` and `Headless` modes**
- **`JavaScript` parsing / crawling**
- **Customizable automatic form filling**
- **`Scope` control** — preconfigured fields / regex
- **`Knowledge base`** — ML page-type / form classification (auto-downloaded model)
- **Customizable output** — preconfigured fields, `STDOUT` / `FILE` / `JSON`
- **Input** — `STDIN`, `URL`, `LIST`

Full feature docs live upstream: [katana README](https://github.com/projectdiscovery/katana/blob/main/README.md).

# `Install`

`katana` needs `Go 1.26+` (`CGO_ENABLED=1` for the headless engine).

```console
CGO_ENABLED=1 go install github.com/foxcornlab/thc-katanax/cmd/katana@latest
```

Or build it yourself:

```console
git clone https://github.com/foxcornlab/thc-katanax.git
cd thc-katanax
go build -o katanax ./cmd/katana
```

Or with `docker`:

```console
docker build -t thc-katanax .
docker run thc-katanax -u https://target.com
```

# `Usage`

```console
katanax -u https://target.com
```

```console
echo https://target.com | katanax
```

```console
katanax -list targets.txt -d 3 -js-crawl -o urls.txt
```

Full flag reference is upstream: `katanax -h` prints everything, and the [usage docs](https://github.com/projectdiscovery/katana/blob/main/README.md#usage) apply as-is.

> Only crawl targets you own or are authorised to test.

# `Thanks to`

- [ProjectDiscovery](https://github.com/projectdiscovery) for `katana` — the crawler core, the headless engine, and the docs this fork stands on.
- The upstream contributors who keep the thing sharp.

# `Disclaimer`

Built for authorised security testing and research only. You are responsible for how you use it — don't point it at systems you don't have permission to test.

# `Licence`

`MIT` — see [LICENSE.md](LICENSE.md). Upstream copyright `ProjectDiscovery` kept intact.

> Research by `Vineeth Kumar` (`foxcornlab`). Found a bug or want a feature, open an `issue`.
