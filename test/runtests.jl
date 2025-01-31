using TestItemRunner
@run_package_tests

@testitem "PDBTools failed test" begin
    using PDBTools
    using BenchmarkTools
    atoms = read_pdb(PDBTools.TESTPDB, "protein")
    a = @benchmark sum($mass, $atoms) samples=1 evals=1
    @test a.allocs == 0
end
