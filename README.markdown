# Prawn Print

Ruby gem that adds `print` and `autoprint` methods for Adobe Reader to generated [Prawn](http://prawn.majesticseacreature.com) PDF documents.

The documents can be opened in any PDF reader, but only Adobe Reader supports triggering printing in this way.


## Installation

With Bundler for e.g. Ruby on Rails, add this to your `Gemfile`:

    gem 'prawn-print'

and run

    bundle

to install it.


## Usage

    # Open print dialog, but don't autoprint.
    pdf = Prawn::Document.new
    pdf.text "I installed Adobe Reader and all I got was this lousy printout."
    pdf.print

    # Autoprint it on the default printer, when opened.
    pdf = Prawn::Document.new
    pdf.text "Help! I am trapped in a PDF factory!"
    pdf.autoprint

    # Autoprint it on a printer where the name includes "LaserJet".
    pdf = Prawn::Document.new
    pdf.text "Help! I am trapped in a PDF factory!"
    pdf.autoprint "LaserJet"

You can call `print`/`autoprint` at any place of the generated PDF – it doesn't have to be at the end.


# Caveats

Sadly, autoprinting isn't fully hands-off – for security reasons, Reader will show a confirmation dialog.


## Credits and license

Based on [prawn-js](https://github.com/threadhead/prawn-js) by James Healy, forked and fixed by Karl Smith,
and on JavaScript samples found somewhere on the web at the dawn of time.

Glued together by [Henrik Nyh](http://henrik.nyh.se/) for [Barsoom](http://barsoom.se) under the MIT license:

>  Copyright (c) 2011 Barsoom AB
>
>  Permission is hereby granted, free of charge, to any person obtaining a copy
>  of this software and associated documentation files (the "Software"), to deal
>  in the Software without restriction, including without limitation the rights
>  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
>  copies of the Software, and to permit persons to whom the Software is
>  furnished to do so, subject to the following conditions:
>
>  The above copyright notice and this permission notice shall be included in
>  all copies or substantial portions of the Software.
>
>  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
>  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
>  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
>  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
>  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
>  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
>  THE SOFTWARE.

# 
