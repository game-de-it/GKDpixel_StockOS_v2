FFplay is a very simple and portable media player using FFmpeg and SDL.
http://ffmpeg.org/ffplay.html

Controls:
- Play/Pause: "Y" button
- Seek backward/forward 10 seconds: D-pad left/right
- Seek backward/forward 1 minute: D-pad down/up
- Seek to percentage in file corresponding to fraction of width: Mouse click
- Cycle audio channel: "Left shoulder"
- Cycle video channel: "A" button
- Cycle subtitles channel: "Right shoulder"
- Show audio waves: "X" button
- Exit: "Select" button

If you press the "Select" button during playback of multimedia file, 
the next time playback will start from the last position.
Last position (auto bookmark) stored in the HOME directory: 
/usr/local/home/.config/ffplay/file_settings/"filename".pos

Use the "FFplay-sub" link to play video with subtitles:
- First, tries to load "filename.ass" subtitles.
- Second, tries to load "filename.srt" subtitles.
- Third, tries to load subtitles from container.

Fontconfig file stored in the HOME directory:
/usr/local/home/.fonts.conf
You may place your fonts into "/usr/local/share/fonts" directory.

Ported to GCW Zero by radon86: gas.radon86@gmail.com
2014-06-17
