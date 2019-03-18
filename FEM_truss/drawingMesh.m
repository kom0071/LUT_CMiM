function drawingMesh(nodeCoordinates,elementNodes,type)

[m,n] = size(elementNodes);
for ii=1:m
    x = [nodeCoordinates(elementNodes(ii,1),1),nodeCoordinates(elementNodes(ii,2),1)];
    y = [nodeCoordinates(elementNodes(ii,1),2),nodeCoordinates(elementNodes(ii,2),2)];
    plot(x,y,type)
    hold on
end    
end

