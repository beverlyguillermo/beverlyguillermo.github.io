---
layout: post
title: Notes on using lsof
---

Sometimes you want to know what applications are taking up the ports on your computer, a useful terminal cli too is `lsof`.

In the terminal, get instruction information by running `man lsof`.  You may get the following information depending
on your computer environment.

> Lsof revision 4.91 lists on its standard output file information about files opened by processes for the following UNIX dialects:
>
>     Apple Darwin 9 and Mac OS X 10.[567]
>     FreeBSD 8.[234], 9.0 and 1[012].0 for AMD64-based systems
>    Linux 2.1.72 and above for x86-based systems
>     Solaris 9, 10 and 11
>
> (See the DISTRIBUTION section of this manual page for information on how to obtain the latest lsof revision.)
>
> An open file may be a regular file, a directory, a block special file, a character special file, an executing text reference, a
> library, a stream or a network file (Internet socket, NFS file or UNIX domain socket.)  A specific file or all the files in a file
> system may be selected by path.
>
> Instead of a formatted display, lsof will produce output that can be parsed by other programs.  See the -F, option description,
> and the OUTPUT FOR OTHER PROGRAMS section for more information.
>
> In addition to producing a single output list, lsof will run in repeat mode.  In repeat mode it will produce output, delay, then
> repeat the output operation until stopped with an interrupt or quit signal.  See the +|-r [t[m<fmt>]] option description for more
> information.

To find out what is listing on just the TCP ports -

```shell
lsof -P -iTCP -sTCP:LISTEN
```