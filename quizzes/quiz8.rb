
module m1
end

module m2
end

class A
end

class B < A
	include m1
	include m2
end

class C < B

end