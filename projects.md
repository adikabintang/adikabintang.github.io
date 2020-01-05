---
title: "Portfolio of projects"
---

### _**Publicly available projects**_

## [fogoh](https://github.com/adikabintang/fogoh)

![fogoh](https://github.com/adikabintang/fogoh/raw/master/figures/result.png)

[Fogoh](https://github.com/adikabintang/fogoh) (2019, at Aalto University as an individual special assignment) is a proof of concept for orchestrating video analytics at the edge with kubernetes. The main idea is to have edge network devices as the kubernetes nodes so that they are physically near to the source of the data, hence reduce the network latency. 

It used lightweight kubernetes, [k3s](https://k3s.io/). The video analytics program was written in Python with OpenCV and [YOLO](https://pjreddie.com/darknet/yolo/).

## [how-quic](https://github.com/adikabintang/how-quic)

![how-quic](https://github.com/adikabintang/how-quic/raw/master/pictures/sample.png)

With TCP, we can best estimate the round trip time from the client side. If we sit in the middle, TCP provides nothing for us to know where the response from the server arrives to the client. QUIC's spin bit allows us to estimate the round trip time even if we are just on the way of the packet transmission.

[how-quic](https://github.com/adikabintang/how-quic) (summer 2019) was my individual attempt to learn how to read RFC and parse network data bit by bit using libpcap in C. At that time, QUIC was still on draft-22. After reading the article about [QUIC measurement](https://www.ietfjournal.org/enabling-internet-measurement-with-the-quic-spin-bit/), I continued to read the [RFC draft](https://tools.ietf.org/html/draft-ietf-quic-transport-22#page-95) to implement this.

