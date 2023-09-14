g(x,y) = 2x + y

@testitem "g" begin
    @test g([1, 2], [3, 4]) == [4, 6]
end