Script for measuring screen on time in Linux.

I needed it to find out how well my battery performs after undervolting cpu and gpu.
If you want to know it too, there is almost no change. Even with -120mV.

Program doesn't do anything in the background. It just saves its state before going to sleep or resuming.

It should work with Windows too. But it would require some changes in paths.

Instalation:
<pre>
sudo ./timer_install.sh
</pre>
Removing:
<pre>
sudo ./timer_install.sh -remove
</pre>

Executing:
<pre>
timer           display measured time
timer -reset    reset and restart timer
</pre>

These 2 you don't have to use. They are called automatically before sleep or after resume.
<pre>
timer -stop     stop timer
timer -start    start timer
</pre>