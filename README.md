<p align="center">
		<img src="https://raw.githubusercontent.com/serversideup/docker-mkpasswd/main/.github/header.png" width="1200" alt="Docker Images Logo">
</p>
<p align="center">
	<a href="https://actions-badge.atrox.dev/serversideup/docker-mkpasswd/goto?ref=main"><img alt="Build Status" src="https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2Fserversideup%2Fdocker-mkpasswd%2Fbadge%3Fref%3Dmain&style=flat" /></a>
	<a href="https://github.com/serversideup/docker-mkpasswd/blob/main/LICENSE" target="_blank"><img src="https://badgen.net/github/license/serversideup/docker-mkpasswd" alt="License"></a>
	<a href="https://github.com/sponsors/serversideup"><img src="https://badgen.net/badge/icon/Support%20Us?label=GitHub%20Sponsors&color=orange" alt="Support us"></a>
	<a href="https://community.serversideup.net"><img alt="Discourse users" src="https://img.shields.io/discourse/users?color=blue&server=https%3A%2F%2Fcommunity.serversideup.net"></a>
  <a href="https://serversideup.net/discord"><img alt="Discord" src="https://img.shields.io/discord/910287105714954251?color=blueviolet"></a>
</p>

Hi! We're [Dan](https://twitter.com/danpastori) and [Jay](https://twitter.com/jaydrogers). We're a two person team with a passion for open source products. We created [Server Side Up](https://serversideup.net) to help share what we learn.

### Find us at:

* 📖 [Blog](https://serversideup.net) - get the latest guides and free courses on all things web/mobile development.
* 🙋 [Community](https://community.serversideup.net) - get friendly help from our community members.
* 🤵‍♂️ [Get Professional Help](https://serversideup.net/get-help) - get guaranteed responses within next business day.
* 💻 [GitHub](https://github.com/serversideup) - check out our other open source projects
* 📫 [Newsletter](https://serversideup.net/subscribe) - skip the algorithms and get quality content right to your inbox
* 🐥 [Twitter](https://twitter.com/serversideup) - you can also follow [Dan](https://twitter.com/danpastori) and [Jay](https://twitter.com/jaydrogers)
* ❤️ [Sponsor Us](https://github.com/sponsors/serversideup) - please consider sponsoring us so we can create more helpful resources

### Our Sponsors
All of our software is free an open to the world. None of this can be brought to you without the financial backing of our sponsors.

<p align="center"><a href="https://github.com/sponsors/serversideup"><img src="https://521public.s3.amazonaws.com/serversideup/sponsors/sponsor-box.png" alt="Sponsors"></a></p>

#### Individual Supporters
<!-- supporters --><a href="https://github.com/deligoez"><img src="https://github.com/deligoez.png" width="40px" alt="deligoez" /></a>&nbsp;&nbsp;<a href="https://github.com/alexjustesen"><img src="https://github.com/alexjustesen.png" width="40px" alt="alexjustesen" /></a>&nbsp;&nbsp;<a href="https://github.com/jeremykenedy"><img src="https://github.com/jeremykenedy.png" width="40px" alt="jeremykenedy" /></a>&nbsp;&nbsp;<!-- supporters -->

# About this project
This repository contains the Dockerfile for the `mkpasswd` image. This image is based on the `whois` package and allows you to generate secure passwords using the `mkpasswd` command.

# Available Docker Images
Use the `latest` tag to get the latest stable release of the image.

<a href="https://hub.docker.com/r/serversideup/mkpasswd/tags"><img alt="Docker Image Size" src="https://img.shields.io/docker/image-size/serversideup/mkpasswd"></a>

## Usage

This Docker container allows you to generate passwords using `mkpasswd` from the `whois` package with customizable options.

### Running the Container

You can run this Docker container directly using the command line. By default, it uses SHA-512 as the hashing method.

```bash
docker run --rm serversideup/mkpasswd
```

This command will output a salted hash which you can use directly.

### Customizing Password Generation

#### Specifying a Method

To specify a different hashing method, you can provide the `--method` option followed by the method name. Supported methods include `sha-512`, `md5`, among others.

```bash
docker run --rm serversideup/mkpasswd --method=md5
```

This will generate a hash using the MD5 method.

#### Adding Salt

To add a specific salt, use the `-S` option followed by your desired salt value.

```bash
docker run --rm serversideup/mkpasswd --method=sha-512 -S mysalt
```

This command uses SHA-512 with a custom salt, enhancing the security of the generated hash.

### Defaults

The default behavior without any additional arguments is to generate a salted hash using the SHA-512 method. If no specific salt is provided, `mkpasswd` automatically generates a random salt.

### Examples

Here are some examples of how to use this Docker image:

- **Generate a default SHA-512 salted hash**:
  ```bash
  docker run --rm serversideup/mkpasswd
  ```

- **Generate a hash using MD5 without a salt**:
  ```bash
  docker run --rm serversideup/mkpasswd --method=md5
  ```

- **Generate a hash using SHA-512 with a specified salt**:
  ```bash
  docker run --rm serversideup/mkpasswd --method=sha-512 -S mysalt
  ```

These examples should help you get started with generating passwords securely using the Docker container.

# Submitting issues and pull requests
Please feel free to open an issue or submit a pull request if you encounter any problems. We're always learning and open to suggestions.

### Submit an issue
If you find a bug or issue, please [submit an issue →](https://github.com/serversideup/docker-mkpasswd/issues/new)

### Submit a pull request
Since there are a lot of dependencies on these images, please understand that it can make it complicated on merging your pull request.

We'd love to have your help, but it might be best to explain your intentions first before contributing.

### Report a security issue
If you find a critical security flaw, please open an issue or learn more about [our responsible disclosure policy](https://www.notion.so/Responsible-Disclosure-Policy-421a6a3be1714d388ebbadba7eebbdc8).
