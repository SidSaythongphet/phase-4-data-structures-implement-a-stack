class Stack

    def initialize limit = nil
        @stack = []
        @limit = limit
    end

    def push value
        if self.full?
            raise 'Stack Overflow'
        else
            @stack.push value
        end
    end

    def pop
        @stack.pop
    end

    def peek
        @stack.last
    end

    def size
        @stack.length
    end

    def empty?
        @stack.empty?
    end

    def full?
        @limit == @stack.size
    end

    def search value
        @stack.each_with_index do |item, index|
            if item == value then return size - index - 1
            end
        end
        -1
    end

end
