command: """
    bar.widget/scripts/volume.sh
"""

refreshFrequency: 1000 # ms


render: (output) ->
  """

<img class="vol" src="bar.widget/images/vol.png"/>

<span class="vol-tex">#{output}</span>

"""
    
    
style: """

  color: #af9f9f
  opacity:1
  font: 11px ProggyOptiS
  height: 14px
  left: 8px
  overflow: hidden
  text-overflow: ellipsis
  top: 6px
  width: 2250px

.vol-tex
 position absolute
 top -1px
 left 16px

"""
