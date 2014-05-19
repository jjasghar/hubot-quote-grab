# Hubot: hubot-quote-grab

[![Build Status](https://travis-ci.org/jjasghar/hubot-quote-grab.png?branch=master)](https://travis-ci.org/jjasghar/hubot-quote-grab)

Sometimes you want to grab good quotes from your channels, and randomly call them back

See [`src/quote-grab.coffee`](src/quote-grab.coffee) for full documentation.

## Installation

Add **hubot-quote-grab** to your `package.json` file:

```json
"dependencies": {
  "hubot": ">= 2.5.1",
  "hubot-scripts": ">= 2.4.2",
  "hubot-quote-grab": ">= 0.0.0"
}
```

Add **hubot-quote-grab** to your `external-scripts.json`:

```json
["hubot-quote-grab"]
```

Run `npm install hubot-quote-grab`

I have a [TODO.md](TODO.md) for the plans I want in it. If you want to do it you are more than welcome!

## Sample Interaction

```
user1> hubot user2 said "Man, our customers are having mail preformance problems" (customers mail servers)
hubot> Srsly? woa.
user1> hubot quote me
hubot> user2 said "Man, our customers are having mail preformance problems" (customers mail servers)

```
