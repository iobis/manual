# OBIS manual and tutorials page

The new OBIS manual and tutorials page was created using [quarto](https://quarto.org/). To contribute, [see the guidelines below](#contributing).

## Structure

The website is constructed from two pieces, which are independent:

- the manual (folder obis-manual)
- the tutorials (folder obis-tutorials)

Each one is a project - the manual a project of type `book` and the tutorials of type `website` - and thus must be rendered separately. Quarto is a powerful tool, but for our specific case we wanted a single website containing the manual and the tutorials website in a single structure, what is currently not possible with the base Quarto. Because of that, we use a small 'hack' to make it work as we intended.

When rendered, the manual will be entirely output to the __docs__ folder. Differently, the tutorials will first output to __docs/tutorial__, then a post-processing code (`obis-tutorials/post-processing.R`) will move the files to the main __docs__ folder and paste the search indexes (so a single search is available for the whole site).

There are a few downsides with this approach:
- you must ensure that both `styles.css` files are the same (or at least that the one in obis-tutorials is the most up-to-date)
- the preview will not include the full version (i.e. the one with the book + website). For the obis-tutorial the preview will still be based on the __docs/tutorial__ version

The post processing script will _not_ remove the __docs/tutorial__ folder, so the preview can work. You can then manually delete it after you previewed the site. As an alternative, you can run the code `render-all.R` from root, which will render both the tutorial and the manual, and then delete the folder.

NOTE: please, does not edit the `_quarto.yml` of the projects.

## Contributing

Because the projects are somewhat independent (although they will have the same final folder), you can contribute to one without touching the other. We have distinct guidelines for the [manual](#contributing-to-the-manual) and for the [tutorials](#contributing-to-the-tutorials):

### Contributing to the manual

Soon

### Contributing to the tutorials

Soon


