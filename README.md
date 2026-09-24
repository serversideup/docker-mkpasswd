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

# About this project
This repository contains the Dockerfile for the `mkpasswd` image. This image allows you to generate secure passwords using the `mkpasswd` command.

# Available Docker Images
Use the `latest` tag to get the latest stable release of the image.

<a href="https://hub.docker.com/r/serversideup/mkpasswd/tags"><img alt="Docker Image Size" src="https://img.shields.io/docker/image-size/serversideup/mkpasswd"></a>

## Usage

This Docker container allows you to generate passwords using [`mkpasswd`](https://pkgs.alpinelinux.org/package/edge/community/x86/mkpasswd) from the `whois` package with customizable options.

### Running the Container

You can run this Docker container directly using the command line. By default, it uses SHA-512 as the hashing method.

```bash
docker run --rm -it serversideup/mkpasswd
```

This command will output a salted hash which you can use directly.

### Customizing Password Generation

#### Specifying a Method

To specify a different hashing method, you can provide the `--method` option followed by the method name.

```bash
docker run --rm -it serversideup/mkpasswd --method=md5crypt
```

#### Available methods

| Method Name  | Hash  |
|-------------|-------|
| sha512crypt | SHA-512 |
| sha256crypt | SHA-256 |
| md5crypt    | MD5    |
| descrypt    | standard 56 bit DES-based crypt(3)    |

You can always run the `-m help` command to view all available methods.
```
docker run --rm -it serversideup/mkpasswd -m help
```
#### Adding Salt

To add a specific salt, use the `-S` option followed by your desired salt value.

```bash
docker run --rm -it serversideup/mkpasswd --method=sha-512 -S mysalt
```

This command uses SHA-512 with a custom salt, enhancing the security of the generated hash.

### Defaults

The default behavior without any additional arguments is to generate a salted hash using the SHA-512 method. If no specific salt is provided, `mkpasswd` automatically generates a random salt.

### Examples

Here are some examples of how to use this Docker image:

- **Generate a default SHA-512 salted hash**:
  ```bash
  docker run --rm -it serversideup/mkpasswd
  ```

- **Generate a hash using MD5 without a salt**:
  ```bash
  docker run --rm -it serversideup/mkpasswd --method=md5crypt
  ```

- **Generate a hash using SHA-512 with a specified salt**:
  ```bash
  docker run --rm -it serversideup/mkpasswd --method=sha-512 -S mysalt
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

<!-- serversideup-sponsors -->
## Our Sponsors
All of our software is free and open to the world. None of this can be brought to you without the financial backing of our sponsors.

<p align="center"><a href="https://github.com/sponsors/serversideup"><img src="https://521public.s3.amazonaws.com/serversideup/sponsors/sponsor-box.png" alt="Become a sponsor"></a></p>

### Platinum Sponsors
<a href="https://sevalla.com"><img src="https://serversideup.net/sponsors/sevalla.png" alt="Sevalla" width="500px"></a>

### Silver Sponsors
<a href="https://giga-infosystems.com"><img src="https://serversideup.net/sponsors/giga-infosystems.png" alt="GiGa infosystems" width="200px"></a>

### Infrastructure Sponsors
These companies give us free access to the tools and infrastructure we use to build, test, and ship our open source projects. Their support helps our entire community.

<a href="https://depot.dev"><img src="https://serversideup.net/sponsors/depot.png" alt="Depot" width="250px"></a>&nbsp;&nbsp;<a href="https://hub.docker.com/u/serversideup"><img src="https://serversideup.net/sponsors/docker.png" alt="Docker" width="250px"></a>
<!-- serversideup-sponsors -->

<!-- serversideup-about -->
## About Us
We're [Dan](https://x.com/danpastori) and [Jay](https://x.com/jaydrogers) - a two-person team with a passion for open source products. We created [Server Side Up](https://serversideup.net) to help share what we learn.

<div align="center">

| <div align="center">Dan Pastori</div> | <div align="center">Jay Rogers</div> |
| --- | --- |
| <div align="center"><a href="https://x.com/danpastori"><img src="https://serversideup.net/wp-content/uploads/2023/08/dan.jpg" title="Dan Pastori" width="150px"></a><br /><a href="https://x.com/danpastori"><img src="https://serversideup.net/logos/x.svg" title="X" width="24px"></a><a href="https://github.com/danpastori"><img src="https://serversideup.net/logos/github.svg" title="GitHub" width="24px"></a></div> | <div align="center"><a href="https://x.com/jaydrogers"><img src="https://serversideup.net/wp-content/uploads/2023/08/jay.jpg" title="Jay Rogers" width="150px"></a><br /><a href="https://x.com/jaydrogers"><img src="https://serversideup.net/logos/x.svg" title="X" width="24px"></a><a href="https://github.com/jaydrogers"><img src="https://serversideup.net/logos/github.svg" title="GitHub" width="24px"></a></div> |

</div>

### Hire Us
Get two senior Laravel experts who deliver quality code with predictable monthly pricing. [Dan](https://x.com/danpastori) and [Jay](https://x.com/jaydrogers) have 30+ years of combined experience building scalable Laravel applications.

- **🎯 Complete Laravel expertise** - Full-stack development, CI/CD, database optimization, mobile apps
- **💰 Predictable pricing** - Fixed monthly subscription, no hourly billing surprises, 40%+ savings
- **⚡ Maximum productivity** - 90%+ development time, no meetings, results in days not weeks
- **🛡️ Risk-free** - 7-day money-back guarantee, cancel anytime

**[💬 Discuss Your Project →](https://serversideup.net/hire-us)**

### Find us at:

* **📖 [Blog](https://serversideup.net)** - Get the latest guides and free courses on all things web/mobile development.
* **🙋 [Community](https://community.serversideup.net)** - Get friendly help from our community members.
* **🤵‍♂️ [Get Professional Help](https://serversideup.net/professional-support)** - Get video + screen-sharing support from the core contributors.
* **💻 [GitHub](https://github.com/serversideup)** - Check out our other open source projects.
* **📫 [Newsletter](https://serversideup.net/subscribe)** - Skip the algorithms and get quality content right to your inbox.
* **🐥 [X (Twitter)](https://x.com/serversideup)** - You can also follow [Dan](https://x.com/danpastori) and [Jay](https://x.com/jaydrogers).
* **❤️ [Sponsor Us](https://github.com/sponsors/serversideup)** - Please consider sponsoring us so we can create more helpful resources.

## Our Products
If you appreciate this project, be sure to check out our other projects.

### 🛠️ Premium
- **[Self-Host Pro](https://selfhostpro.com)**: Sell self-hosted software in minutes.
- **[Spin Pro](https://getspin.pro)**: Production-ready Docker templates for shipping quickly.

### 🌍 Open Source
- **[serversideup/php](https://serversideup.net/open-source/docker-php/)**: Supercharged PHP Docker images, based off the official PHP images. <!-- repo:serversideup/docker-php -->
- **[Spin](https://serversideup.net/open-source/spin/)**: Docker Simplified. Deploy Anywhere. Zero Downtime. Any OS. <!-- repo:serversideup/spin -->
- **[Financial Freedom](https://serversideup.net/open-source/financial-freedom/)**: Open source alternative to Mint, YNAB, and more. <!-- repo:serversideup/financial-freedom -->
- **[AmplitudeJS](https://serversideup.net/open-source/amplitudejs/)**: Customize the design of any element of the HTML5 Audio Player. <!-- repo:521dimensions/amplitudejs -->
- **[webext-bridge](https://serversideup.net/open-source/webext-bridge/)**: Messaging in Web Extensions made easy. Batteries included. <!-- repo:serversideup/webext-bridge -->
- **[serversideup/ansible](https://github.com/serversideup/docker-ansible)**: Run Ansible anywhere with a lightweight and powerful Docker image. <!-- repo:serversideup/docker-ansible -->

### 📚 Books
- **[Building Browser Extensions](https://serversideup.net/products/building-multi-platform-browser-extensions/)**: Build browser extensions for Firefox, Chrome, and more.
- **[Ultimate Guide To Building APIs & SPAs](https://serversideup.net/products/ultimate-guide-to-building-apis-and-spas-with-laravel-and-nuxt3/)**: Build web and mobile apps from the same codebase.
<!-- serversideup-about -->
