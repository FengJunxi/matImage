% IMGEODESICS Geodesic distances in images
% Version 1.1 04-Apr-2011 .
%
%   Some functions for computing distance function in images, and computing
%   geodesic parameters.
%
%   The base function is 'imGeodesicDistanceMap'. It propagates distances
%   from a set of markers, using a mask to constrain the propagation.
%   Chamfer distances are used as approximation of Euclidean distances.
%   The function 'imGeodesicDistanceMap3d' is its extension for 3D images.
%
%   Using Chamfer distance propagation, it is possible to compute geodesic
%   distances and geodesic path between two markers in a particle.
%
%   It is also possible to compute morphological parameters, such as the
%   geodesic diameter or the geodesic radius. For some parameters, an
%   exhaustive search is performed, making the computation time rather
%   high.
%   
%   Some functions are defined for 2D and 3D images. Some other exist in
%   two different forms. The computation of geodesic path is not defined
%   for 3D images. 
%
%
% Distance propagation
%   imGeodesicDistanceMap   - Geodesic distance transform for binary or label images
%   imGeodesicDistanceMap3d - Geodesic distance transform for 3D binary or label images
%   imGeodesicPath          - Compute a geodesic path between two markers in an image
%   imMaxGeodesicPath       - Find a path in a region with maximal geodesic length
%   imGeodesicDistance      - Compute geodesic distance between 2 markers
%
% Geodesic parameters
%   imGeodesicDiameter      - Compute geodesic diameter of particles
%   imGeodesicDiameter3d    - Compute geodesic diameter of 3D particles
%   imGeodesicCenter        - Compute geodesic center of a binary particle
%   imGeodesicExtremities   - Compute geodesic extremities of a binary particle
%   imGeodesicRadius        - Compute the geodesic radius of a binary particle
%   imGeodesicPropagation   - Compute geodesic propagation for each foreground pixel
%
% Validation
%   chamferDistanceError    - Compute relative error of chamfer distance with euclidean
%
%
% References
% If you find this package useful, please make a citation to the paper it
% was developed for: 
% * Legland, D. and Beaugrand, J. (2013). Automated clustering of
%     lignocellulosic fibres based on morphometric features and using
%     clustering of variables. Industrial Crops and Products, 45, 253-261.
%     URL: http://dx.doi.org/10.1016/j.indcrop.2012.12.021 
%
% Another reference of interest:
% * Lantu�joul, C. and Beucher, S. On the use of geodesic metric in image
%     analysis J. Miscrosc., 1981, 121, 39-40 
%
%
% ----
% Author: David Legland
% e-mail: david.legland@inra.fr
% http://github.com/mattools/matImage
% http://www.pfl-cepia.inra.fr/index.php?page=imGeodesics
% Copyright INRA - Cepia Software Platform.

% deprecated
%   geodesicLength          - Compute geodesic length of particles
%   imChamferDistance       - Chamfer distance transform using scanning algorithm
%   imChamferDistance5x5    - Chamfer distance transform for 5x5 masks
%   imChamferDistance3d     - Compute chamfer distance in 3D images

