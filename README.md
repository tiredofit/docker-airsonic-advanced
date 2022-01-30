# github.com/tiredofit/docker-airsonic-advanced


[![GitHub release](https://img.shields.io/github/v/tag/tiredofit/docker-airsonic-advanced?style=flat-square)](https://github.com/tiredofit/docker-airsonic-advanced/releases/latest)
[![Build Status](https://img.shields.io/github/workflow/status/tiredofit/docker-airsonic-advanced/build?style=flat-square)](https://github.com/tiredofit/docker-airsonic-advanced/actions?query=workflow%3Abuild)
[![Docker Stars](https://img.shields.io/docker/stars/tiredofit/nginx.svg?style=flat-square&logo=docker)](https://hub.docker.com/r/tiredofit/nginx/)
[![Docker Pulls](https://img.shields.io/docker/pulls/tiredofit/nginx.svg?style=flat-square&logo=docker)](https://hub.docker.com/r/tiredofit/nginx/)
[![Become a sponsor](https://img.shields.io/badge/sponsor-tiredofit-181717.svg?logo=github&style=flat-square)](https://github.com/sponsors/tiredofit)
[![Paypal Donate](https://img.shields.io/badge/donate-paypal-00457c.svg?logo=paypal&style=flat-square)](https://www.paypal.me/tiredofit)

* * *

## About

This will build a Docker image for [Nginx](https://www.nginx.org), for serving websites

*    Tracks Mainline release channel
*    Many options configurable including compression, performance
*    Includes Monitoring (nginx status) on port 73
*    Includes [Nginx Ultimate Bad Bot Blocker](https://github.com/mitchellkrogza/nginx-ultimate-bad-bot-blocker)
*    Logrotate Included to roll over log files at 23:59, compress and retain for 7 days
*    Ability to Password Protect (Basic), LDAP Authenticate or use LemonLDAP:NG Handler

## Maintainer

- [Dave Conroy](https://github.com/tiredofit)

  - [Networking](#networking)
- [Maintenance](#maintenance)
  - [Shell Access](#shell-access)
- [Support](#support)
  - [Usage](#usage)
  - [Bugfixes](#bugfixes)
  - [Feature Requests](#feature-requests)
  - [Updates](#updates)
- [License](#license)
- [References](#references)

* * *
## Maintenance

### Shell Access

For debugging and maintenance purposes you may want access the containers shell.

``bash
docker exec -it (whatever your container name is) bash
``
## Support

These images were built to serve a specific need in a production environment and gradually have had more functionality added based on requests from the community.
### Usage
- The [Discussions board](../../discussions) is a great place for working with the community on tips and tricks of using this image.
- Consider [sponsoring me](https://github.com/sponsors/tiredofit) personalized support.
### Bugfixes
- Please, submit a [Bug Report](issues/new) if something isn't working as expected. I'll do my best to issue a fix in short order.

### Feature Requests
- Feel free to submit a feature request, however there is no guarantee that it will be added, or at what timeline.
- Consider [sponsoring me](https://github.com/sponsors/tiredofit) regarding development of features.

### Updates
- Best effort to track upstream changes, More priority if I am actively using the image in a production environment.
- Consider [sponsoring me](https://github.com/sponsors/tiredofit) for up to date releases.

## License
MIT. See [LICENSE](LICENSE) for more details.
## References

