command: """
    bar.widget/scripts/network.sh
"""
refreshFrequency: 1000

style: """
   


    top 5px
    right:7px
    
    color #bdafaf
    
    font 11px ProggyOptiS
    
    opacity 1
    letter-spacing 1.3px

    .widget-title
        text-align: widget-align

    .stats-container
        width: 100%
        margin-bottom 5px
        border-collapse collapse
    .down:before
        content ""
        color #865e6a


    .up:before
        content ""
        color #7a6373
        opacity 1

    .up:after
        content " "
        padding-right 1px
        opacity 1

    .down
        text-align right
        opacity 1
        color #af9f9f
        margin-right -4px

    .uarr
        margin-left -22px
    .up
        text-align right
        position absolute
        right 44px
        width 200%
        opacity 1
        color #af9f9f
"""

render: -> """
    <div class="container">
        
       
        <img class="uparr" src="bar.widget/images/up.png">
       <span class="up"></span>
       <span class="down"></span>
            
     <img class="downarr" src="bar.widget/images/down.png">
        
    </div>
"""

update: (output, domEl) ->

    usage = (bytes) ->
        kb = bytes / 1024 / 1024
        usageFormat kb

    usageFormat = (kb) ->

            "#{kb.toFixed(1)}"


    updateStat = (sel, currBytes, totalBytes) ->
        percent = (currBytes / totalBytes * 100).toFixed(1) + "%"
        $(domEl).find(".#{sel}").text usage(currBytes)
        $(domEl).find(".bar-#{sel}").css "width", percent

    args = output.split "^"

    downBytes = (Number) args[0]
    upBytes = (Number) args[1]

    totalBytes = downBytes + upBytes

    updateStat 'down', downBytes, totalBytes
    updateStat 'up', upBytes, totalBytes
