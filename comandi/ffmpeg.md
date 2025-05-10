# ffmpeg

## esempio #1
Per tagliare una parte di video:

```
ffmpeg -ss 00:00:30 -i orginalfile -t 00:00:05 -vcodec copy -acodec copy newfile
```
