#!/bin/sh
cp /home/ocean/Documents/GitHubDir/oldPythonFiles/Fourier_analyse_video/Result/first_fft.mp4 contents/do_I_wanna_know_fft.mp4
#cp /home/ocean/Documents/GitHubDir/oldPythonFiles/Fourier_analyse_video/Result/first.mp4 contents/do_I_wanna_know_fourier.mp4 # don't want the too-detailed version
if [ -f "/home/ocean/Documents/GitHubDir/ITERCAD/sketch.gif" ]; then
    cp /home/ocean/Documents/GitHubDir/ITERCAD/sketch.gif contents/ITERCAD_sketch.gif
else
    ffmpeg /home/ocean/Documents/GitHubDir/ITERCAD/sketch.mp4 contents/ITERCAD_sketch.gif
fi
cp /home/ocean/Documents/GitHubDir/ITERCAD/video/rotate/EvenlyDistributed.mp4 contents/EvenlyDistributed.mp4
cp /home/ocean/Documents/GitHubDir/ComplexAnalysis/exponentiate.pdf contents/exponentiate.pdf

cp /home/ocean/Documents/Work/5.CV/tex/CV.pdf /home/ocean/Documents/Work/5.CV/tex/CV_short.pdf contents/CV/.
cp /home/ocean/Documents/Work/5.CV/tex/CV.tex /home/ocean/Documents/Work/5.CV/tex/CV_short.tex contents/CV/. # add the source codes too
pandoc contents/CV/CV.tex -o contents/CV/pandoc/CV.html
pandoc contents/CV/CV_short.tex -o contents/CV/pandoc/CV_short.html
cd contents/CV/
htlatex CV.tex
htlatex CV_short.tex