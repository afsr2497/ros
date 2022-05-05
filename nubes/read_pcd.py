import open3d as o3d
coordenadas = o3d.geometry.TriangleMesh.create_coordinate_frame()
pcd = o3d.io.read_point_cloud('n1.pcd')
o3d.visualization.draw_geometries([pcd,coordenadas])
