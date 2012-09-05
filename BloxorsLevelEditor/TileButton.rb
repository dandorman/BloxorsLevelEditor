#
#  TileButton.rb
#  BloxorsLevelEditor
#
#  Created by Dan Dorman on 10/14/11.
#  Copyright 2011 Alliance Health. All rights reserved.
#


class TileButton < NSButton
    STATES = %w[. #]
    
    def initWithFrame(frame)
        if super
            @state_index = 0
            
            setTarget(self)
            setTitle(STATES.first)
            self
        end
    end
    
    def mouseDown(event)
        cycle_state
        super
    end
    
    private
    
    def cycle_state
        @state_index = (@state_index + 1) % STATES.length
        setTitle(STATES[@state_index])
    end
end