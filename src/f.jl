f(x::SVector{2}) = x[1] + x[2]

@testitem "f" begin
    using StaticArrays
    @test f(SVector(1, 2)) == 3
end