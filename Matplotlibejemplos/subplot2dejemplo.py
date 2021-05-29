import matplotlib.pyplot as plt
X=list(range(50))
Y1=[1/(x+5) for x in X]
Y2=[x**2 for x in X]
plt.subplot2grid((1,2),(0,0),rowspan=1,colspan=1)
plt.plot(X,Y1)
plt.subplot2grid((1,2),(0,1),rowspan=1,colspan=1)
plt.plot(X,Y2)
plt.show()