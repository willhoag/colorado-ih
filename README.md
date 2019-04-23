# Indie Hackers Meetup Lander

## Site made possible with a [Cardsaholic](https://cardsaholic.com) embed
[Cardsaholic](https://cardsaholic.com) is a service for creating shareable and embedable card layout websites using Google Sheets CSV data.

## Easy Deployment CI with [Github Actions](https://github.com/features/actions) and [Surge.sh](https://surge.sh)
This repo is setup with [Github Actions](https://github.com/features/actions) to deploys to [Surge.sh](https://surge.sh) on every `git push` to master. Of course change deploy process as you see fit, but I find this method quick, easy and free.

If you decide to deploy in a different way, see [Remove Deploy Process](#remove-deploy-process) below.

## Contributions
If you make any cool changes, woudl love it if you submit a pull request!

## Getting Started
1. Fork this repo
2. Make [Cardsaholic](https://cardsaholic.com) board
3. Signup for free [Surge.sh](https://surge.sh) account
4. [Add your Surge.sh secrets to your Github Repo](https://help.github.com/en/articles/creating-a-github-action#storing-secrets-in-your-repository)
5. Add CNAME DNS record for `your domain` pointing to `na-west1.surge.sh`. Use [Cloudflare](https://cloudflare.com) for free https.
6. Update [index.html](./index.html) with your Meetups details (see [Changes need for index.html](#changes-needed-for-indexhtml) below)
7. Change domain in [CNAME](./CNAME) file to match your DNS record
8. Preview changes with `npm start`
9. Deploy with `git push origin master` or `npm deploy`

## Changes needed for [index.html](./index.html)
- [ ] Meta Tags: Social Share URLs (there are many)
- [ ] Heading: Your Meetup Name
- [ ] Image: Your Meetup Flag / Logo
- [ ] Button: Git Repo Source URL
- [ ] Button: Discord Group Chat URL
- [ ] Button: Google Sheet URL (for updating makers)
- [ ] Button: Meetup Page URL
- [ ] iframe: Cardsaholic embed Src URL (data from your spreadsheet)

## Matching Colors
Here's some reference when you're editing your [Cardsaholic](https://cardsaholic.com) embed theme.
- Light Blue: `#00c3ff`
- Dark Blue: `#1b3b55`
- Darkest Blue: `#08243b`

## Remove Deploy Process
If you want to start fresh without CI, remove these:
- [.github/](./.github) folder
- [CNAME](./CNAME) file
- [package.json](./package.json) deploy script
- [surge.sh](https://surge.sh) dependency via `yarn remove surge`
