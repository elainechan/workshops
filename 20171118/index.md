---
title: "Plotcon 2018 workshop"
author: "[Carson Sievert](https://cpsievert.me/)"
date: "King's College, New York, NY <br /> November 18-19th, 2017"
venue: "Plotcon 2018"
recording: "none"
output: 
  tufte::tufte_html:
    keep_md: true
    mathjax: null
    css: main.css
    self_contained: false
---




# About the workshop

This workshop is highly interactive. Attendees are expected to participate in hands-on exercises which augment the lecture material and are encouraged to ask questions. To participate in the exercises, attendees should bring a laptop with relevant software installed **prior to the workshop**. Click [here](#installation) for installation directions.

By the end of this workshop, you should be able to leverage interactive visualization techniques to perform/present data analysis tasks/findings using [the R package plotly](https://plot.ly/r/). Though it would be beneficial to have some prior knowledge of R and [ggplot2](http://ggplot2.tidyverse.org/), we do not require it, and as such, we avoid assuming pre-existing knowledge as much as possible. Furthermore, this workshop is _not_ designed to make you an R programming expert -- it's designed to get you [doing powerful things quickly](http://varianceexplained.org/r/teach-hard-way/) regardless of your experience with R or programming in general.

# Accessing materials

Once you've [opened RStudio](#open-rstudio) via the docker container, open the index.html file in the day1 (or day2) folder. These slides have various examples/content and reference files that reside in your RStudio session.

Alternatively, you may access the slides online: [day1](slides/day1) and [day2](slides/day2).

# Installation

## Docker

<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote">NOTE: if you already have Docker and are comfortable running terminal commands, you can skip most of these directions and run:</span>
<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote"><code>docker run -p 8787:8787 cpsievert/workshops</code></span>

[Docker](https://www.docker.com/) provides the most seamless installation experience and *guarantees* consistency in computational results (which is why I highly recommend this installation approach). If you don't already have Docker, or have never heard of it, don't worry! I'll walk you through how to use it for our purposes. First off, download and install the [Docker toolbox](https://www.docker.com/products/docker-toolbox) (completely free to use!). The toolbox ships with a number of things, one of them being a graphical interface called Kitematic which makes it easy to find/download/use Docker images. If you're comfortable running Docker from the command line, feel free to run the command in the side margin (then [open RStudio](#open-rstudio)) and skip the Kitematic directions.

After installing the Docker toolbox, you should be able to find Kitematic in your applications. Go ahead and open it. You should see a welcome page like this:


<img src="kitematic-welcome.png" width="1736"  />

There is no need to create a Docker Hub account (so go ahead and press 'skip' or 'close'), but we'll be downloading an image I've provided [specifically for this workshop](https://hub.docker.com/r/cpsievert/workshops) from Docker Hub. To download it, just type 'cpsievert' in the search bar and 'create' the relevant image: 

<img src="kitematic-images.png" width="1640"  />

This will download the image, which may take a few minutes (we're downloading an entire virtual comuting environment!). Once the image is done downloading, you should see something similar to this:

<p><span class="marginnote shownote"><!--
<div class="figure">-->
<img src="kitematic-settings.png" alt="You might need to map docker port 8787 to port 8787 on the host (click gear icon, then go to &quot;Configure Ports&quot; section of the &quot;Hostname/Ports&quot; tab)" width="778"  />
<!--
<p class="caption marginnote">-->You might need to map docker port 8787 to port 8787 on the host (click gear icon, then go to "Configure Ports" section of the "Hostname/Ports" tab)<!--</p>-->
<!--</div>--></span></p>

<img src="kitematic-logs.png" width="1694"  />

### Open RStudio

Finally, point your web browser to <http://locahost:8787>, and you'll see a log-in page for RStudio. Enter 'rstudio' for both the username and password. Once you see an RStudio window like this one, high-five yourself; you're all set up for the workshop! 🎉 🎉 🎉

<p><span class="marginnote shownote"><!--
<div class="figure">-->
<img src="rstudio-login.png" alt="Use 'rstudio' for both login and password." width="371"  />
<!--
<p class="caption marginnote">-->Use 'rstudio' for both login and password.<!--</p>-->
<!--</div>--></span></p>

<img src="rstudio.png" width="1900"  />

# Code of Conduct

We are committed to providing a welcoming and harassment-free experience for everyone, regardless of gender, gender identity and expression, age, sexual orientation, disability, physical appearance, body size, race, ethnicity, religion (or lack thereof), or technology choices. We do not tolerate harassment of conference participants in any form. Sexual language and imagery is not appropriate for any conference venue, including talks, workshops, parties, Twitter and other online media. Participants violating these rules may be sanctioned or expelled from the event at the discretion of the organizers.

This code of conduct applies to all participants, including the organizers and applies to all modes of interaction, both in-person and online, including the Slack channel and Twitter.

Workshop participants agree to:

* Be considerate in speech and actions, and actively seek to acknowledge and respect the boundaries of fellow attendees.

* Refrain from demeaning, discriminatory, or harassing behavior and speech. Harassment includes, but is not limited to: deliberate intimidation; stalking; unwanted photography or recording; sustained or willful disruption of talks or other events; inappropriate physical contact; use of sexual or discriminatory imagery, comments, or jokes; and unwelcome sexual attention. If you feel that someone has harassed you or otherwise treated you inappropriately, please alert any member of the conference team in person.

* Take care of each other. Alert a member of the conference team if you notice a dangerous situation, someone in distress, or violations of this code of conduct, even if they seem inconsequential.

## Need Help?

<b>Please speak with Carson Sievert if you have any concerns.</b>

If any attendee engages in harassing behavior, the workshop organizers may take any lawful action we deem appropriate, including but not limited to warning the offender or asking the offender to leave the workshop. (If you feel you have been unfairly accused of violating this code of conduct, you should contact the workshop team with a concise description of your grievance.)

We welcome your feedback on this event, and thank you for working with us to make it a safe, enjoyable, and friendly experience for everyone who participates.

Parts of above text is licensed CC BY-SA 4.0. Credit to [SRCCON](https://srccon.org) and [rOpenSci](http://textworkshop17.ropensci.org/).
