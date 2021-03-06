module Laser
  module Cutter
    module Renderer
      class LineRenderer < Base
        alias_method :line, :subject
        def render pdf = nil
          pdf.stroke { pdf.line [line.p1.x, line.p1.y].map{ |p| p.send(units) },
                                [line.p2.x, line.p2.y].map{ |p| p.send(units) }}
        end

        def enclosure
          self.line
        end
      end
    end
  end
end
