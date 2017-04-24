module Capacity

    def full?
          if @max_capacity.size >= @current_occupancy
            true
          else
            false
          end
        end

        def add(roommate)
          if !full?
            @current_occupancy << roommate
          else
            "Sorry Kid, we are full!"
          end
        end

        def remove
          @removed_roommate = @current_occupancy.pop
        end
end
