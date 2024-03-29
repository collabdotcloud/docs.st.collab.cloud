# ThreeThirds Collaboration Documentation Site (docs.st.collab.cloud)

This site is hosted on github pages and is generated by [mkdocs](https://www.mkdocs.org) and [mkdocs-material](https://hub.docker.com/r/squidfunk/mkdocs-material/)

The static files for the website are served out from the `gh-pages` branch.

## Making changes, adding pages, etc

### Setup

1. Clone this repo or issue `git pull` to get the latest
2. Install mkdocs & mkdocs-material as per [these instructions](https://squidfunk.github.io/mkdocs-material/getting-started/#installation) (Please make sure use pip3 to install both of mkdocs & mkdocs-material instead of pip)
3. Install [mkdocs-redirects](https://pypi.org/project/mkdocs-redirects/)

    ```sh
    pip install mkdocs-redirects
    ```

    or

    ```sh
    pip3 install mkdocs-redirects
    ```

### General guide

This documentation is written in [Markdown](https://en.wikipedia.org/wiki/Markdown).

To edit a page, first locate the desired page in the `docs/` folder

- `docs/index.md` is the Markdown for the homepage
- The `docs/admin/` folder contains all the documentation pages for the **Admin Documentation**
- `docs/users/` contains all the Markdown for the **User Documentation**
- The `docs/assets/` folder contains images and additional resources.

Check out the [Markdown guide](https://www.markdownguide.org/basic-syntax/) if necessary.

### Adding a new page

You will need to complete the following steps to add a new page:

1. Create a new Markdown file at the appropriate location inside `docs/`. (Note: You shouldn't add a heading for the new because the title from the config is used. See other Markdown files for reference)
2. Edit `mkdocs.yml` in the repository root directory. Indentation and syntax is important!

### Previewing locally

To preview the changes locally, run this command in the repository root directory:

```sh
mkdocs serve
```

Browse to [http://127.0.0.1:8000](http://127.0.0.1:8000)

### Publishing

1. Directly commit any changes to the master branch to publish a new version of the website. This includes editing md files or config in `mkdocs.yml` and adding new pages and assets.

2. Then the site must be generated and committed by issuing:

    ```sh
    mkdocs gh-deploy
    ```

## More info

1. See the file `mkdocs.yml` for site config
2. Check out the docs for [mkdocs](https://www.mkdocs.org) and [mkdocs-material](https://squidfunk.github.io/mkdocs-material)

## Latest Updates

The Search plugin is enabled since March 18 2021
