#
#  Level.rb
#  BloxorsLevelEditor
#
#  Created by Dan Dorman on 10/14/11.
#  Copyright 2011 Alliance Health. All rights reserved.
#

require 'matrix'

class Level
    def initialize(rows, columns)
        @matrix = Matrix.build(rows, columns) { "." }
    end
    
    def [](column, row)
        @matrix[row, column]
    end
    
    def []=(column, row, value)
        NSLog(@matrix.class.name)
        @matrix.row(row)[column] = value
    end
end