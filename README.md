# AnimKit Demo - Nutmeg Play of the Game
## Introduction
* This is a test repository I made to test out how AnimKit works in real world production tasks.
* Version used: Autodesk Maya 2019 + AnimKit 3.2.
* This animation used the "Nutmeg" rig by UW Animation Research Labs in the production of "Taking Flight" and props I modeled for the production in "Dazzle!". The original reference comes from the play of the game of the hero "Wrecking Ball" in Overwatch. 
* I love both characters so much, and thought making Nutmeg do something like Hammond would be super cute.
* Note this repository does NOT contain any of the rigs or the props, they are property of University of Washington Animation Research Labs.

## Final Results
### Reference

<a href="https://errrneist.github.io/Animation-Nutmeg_POTG/videos/hammond-reference.mp4" rel="Reference" width="100">![Ref](https://github.com/Errrneist/Animation-Nutmeg_POTG/blob/master/IMG/thumbnail_reference.PNG)</a>


### PlayBlast

<a href="https://errrneist.github.io/Animation-Nutmeg_POTG/videos/nutmeg_potg_playblast.mp4" rel="Reference" width="100">![Ref](https://github.com/Errrneist/Animation-Nutmeg_POTG/blob/master/IMG/thumbnail_playblast.PNG)</a>

### Final Render

<a href="https://errrneist.github.io/Animation-Nutmeg_POTG/videos/nutmeg_potg_render.mp4" rel="Reference" width="100">![Ref](https://github.com/Errrneist/Animation-Nutmeg_POTG/blob/master/IMG/thumbnail_render.PNG)</a>

## AnimKit Features Highlighted in This Project
### Playblasting using Playblast+
* All the playblasts generated in this project are all created with the Playblast+ script and its API I wrote in AnimKit.

### Scene Iteration using iter++ and Playblast+ API
* This scene was iterated 32 times when I animated it, under `./master/nutmeg_cannon_overwatch_iterations`.
* Each iteration was saved with one maya file, and two playblasts in .mp4 format encoded using playblast+ API (One with 24 frame padding and one without).
* So there is a total of 32 maya files and 64 playblasts in the iteration folder.
* All the iteration saved in total only consumed 63MB of disk space.

### Rendering with Zoetrope Renderer
* Because my copy of Maya does not come with an authorized license of Arnold, images rendered using `Render - Batch Render` will produce a result with arnold watermark.
<img align="middle" src="https://github.com/Errrneist/Animation-Nutmeg_POTG/blob/master/bad_render_example/arnold_batch_watermark_example.png" alt="bad arnold render">

* Zoetrope render script I developed in AnimKit used a technique called "Foreground Rendering" to bypass the restrictions of Arnold and produce a watermark-free render.
<img align="middle" src="https://github.com/Errrneist/Animation-Nutmeg_POTG/blob/master/bad_render_example/zoetrope_watermark_free_example.png" alt="bad arnold render">

### Composite Image Sequences to Video using Zoetrope Smart Video Encoder
* I used the Zoetrope Smart Video Encoder to encode all image sequences in each layers into a video, before I ported it to Premiere.
* Zoetrope Smart Video Encoder replaces the redundant composing simple renders using Adobe Media Encoder, Premiere, or After Effects by automating the image sequence -> video process.

### Fixing broken Rig Components using Fix-It-Felix toolbox
* Rig handles in the rigs I used are built with NURBS surfaces, and they tend to break and glitch.
* I wrote a fix and placed it in the Fix-It-Felix toolbox in AnimKit to fix this issue.

<a href="https://errrneist.github.io/Animation-Nutmeg_POTG/videos/nutmeg_fix_broken_nurbs.mp4" rel="Reference" width="100">![Ref](https://github.com/Errrneist/Animation-Nutmeg_POTG/blob/master/IMG/thumbnail_broken_nurbs.PNG)</a>
