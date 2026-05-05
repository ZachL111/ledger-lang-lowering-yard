include("../src/Policy.jl")
using .Policy

signal_case_1 = Signal(69, 83, 27, 6, 8)
@assert score(signal_case_1) == 129
@assert classify(signal_case_1) == "review"
signal_case_2 = Signal(64, 106, 20, 14, 7)
@assert score(signal_case_2) == 133
@assert classify(signal_case_2) == "review"
signal_case_3 = Signal(103, 92, 19, 23, 8)
@assert score(signal_case_3) == 170
@assert classify(signal_case_3) == "accept"
