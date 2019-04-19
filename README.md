# CAQL Handbook

This repository contains a set of notebooks, that examplifies features of the Circonus Analytics Query language.
It aims to cover a wide range of pracical use cases that we had in mind when designing the language.

The authorative source for information about CAQL is the reference manual:

https://login.circonus.com/resources/docs/user/caql_reference.html

It is automatically updated with new CAQL releases, and conains a full list of the available functions.

## Chapters

Here is a list of currently available chapters, at the time of writing.

* [0. Introduction](0.%20Introduction.ipynb)
* [1. First Steps with CAQL](1.%20First%20Steps%20with%20CAQL.ipynb)
* [2. Getting data into CAQL](2.%20Getting%20data%20into%20CAQL.ipynb)
* [3. The CAQL Processing Model](3.%20CAQL%20Processing%20Model.ipynb)
* [4. Aggregating Data](4.%20Aggregating%20Data%20with%20CAQL.ipyn)
* [5. Stream Operations](5.%20CAQL%20Stream%20Operations.ipynb)
* [6. Missing Data](6.%20Missing%20Data.ipynb)
* [7. Forecasting Data](7.%20Forecasting%20Data.ipynb)
* [8. Handling Histogram Data](8.%20Handling%20Histogram%20Data.ipynb)
* [A1. Using CAQL via the API](A1.%20Using%20CAQL%20via%20the%20API.ipynb)
* [A2. Using CAQL with Python](A2.%20Using%20CAQL%20with%20Python.ipynb)

If you are viewing this on GitHub, you can also just click on the *.ipynb files in the root directroy listing.

## Interactive Versions

If you want to manipulate the examples interactively, you can use the following commands:

```
git clone git@github.com:circonus-labs/caql-handbook.git
cd caql-handbook
docker run -it --rm \
  -p 9999:9999 -p 9998:9998 \
  -v $(pwd):/home/jovyan/work \
  heinrichhartmann/jupyter-caql
```

This assumes you have git installed and a running docker service on your machine.

## API Credentials

The examples use data from our demo account. If you want to run the
exact examples you will need an API token from the demo account. Please
reach out to us via email or Slack, and we are happy to provide one for you.
Otherwise, you can alwyas change the examples to use data from your own account.

The recommended way to manage API tokens in to create a file `~/.circonusrc.json` with the following
structure:

```
{
  "ACCOUNT_NAME[1]" : "$API_TOKEN[1]",
  "ACCOUNT_NAME[2]" : "$API_TOKEN[2]",
  ...
}
```

Then mount the $HOME directory into your container by adding a parameter to the above docker command:

```
  -v $HOME:/home/jovyan/host/home
```

TODO: Put an API token into this repository.
