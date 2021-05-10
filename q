[1mdiff --git a/config/sensors_pointcloud.yaml b/config/sensors_pointcloud.yaml[m
[1mindex d36cf43..6c64851 100644[m
[1m--- a/config/sensors_pointcloud.yaml[m
[1m+++ b/config/sensors_pointcloud.yaml[m
[36m@@ -1,13 +1,12 @@[m
[31m-[m
 sensors:[m
   - sensor_plugin: occupancy_map_monitor/PointCloudOctomapUpdater[m
[31m-    point_cloud_topic: /camera_side/depth/color/points[m
[32m+[m[32m    point_cloud_topic: /camera/depth/color/points[m
     queue_size: 5[m
[31m-    max_range: 2.5[m
[32m+[m[32m    max_range: 3.0[m
     point_subsample: 1[m
     shadow_threshold: 0.2[m
     padding_scale: 4.0[m
     padding_offset: 0.03[m
[31m-    max_update_rate: 5[m
[32m+[m[32m    max_update_rate: 15[m
     filtered_cloud_topic: filtered_cloud[m
[31m-    min_range: 0.3[m
[32m+[m[32m    min_range: 0.3[m
\ No newline at end of file[m
[1mdiff --git a/launch/moveit.rviz b/launch/moveit.rviz[m
[1mindex b0b4562..bd347af 100644[m
[1m--- a/launch/moveit.rviz[m
[1m+++ b/launch/moveit.rviz[m
[36m@@ -6,11 +6,12 @@[m [mPanels:[m
       Expanded:[m
         - /MotionPlanning1[m
         - /Camera1[m
[31m-        - /Camera1/Status1[m
         - /TF1[m
         - /TF1/Frames1[m
[32m+[m[32m        - /PointCloud21[m
[32m+[m[32m        - /Image1[m
       Splitter Ratio: 0.44175317883491516[m
[31m-    Tree Height: 273[m
[32m+[m[32m    Tree Height: 161[m
   - Class: rviz/Help[m
     Name: Help[m
   - Class: rviz/Views[m
[36m@@ -21,12 +22,12 @@[m [mPanels:[m
   - ArUco dictionary: DICT_5X5_250[m
     Class: moveit_rviz_plugin/HandEyeCalibration[m
     Name: HandEyeCalibration[m
[31m-    Rx: 3.1099[m
[31m-    Ry: -3.0919[m
[31m-    Rz: -0.64[m
[31m-    Tx: 1.5036[m
[31m-    Ty: -1.2438[m
[31m-    Tz: 0.5443[m
[32m+[m[32m    Rx: 3.0336[m
[32m+[m[32m    Ry: -3.0715[m
[32m+[m[32m    Rz: -0.9422[m
[32m+[m[32m    Tx: 1.5713[m
[32m+[m[32m    Ty: -1.1821[m
[32m+[m[32m    Tz: 0.6237[m
     base: edo_base_link[m
     camera_info_topic: /camera_side/color/camera_info[m
     eef: edo_link_ee[m
[36m@@ -39,9 +40,9 @@[m [mPanels:[m
     marker size (px): 200[m
     markers, X: 3[m
     markers, Y: 4[m
[31m-    measured marker size (m): 0.059[m
[31m-    measured separation (m): 0.0060000[m
[31m-    object: handeye_target[m
[32m+[m[32m    measured marker size (m): 0.059000[m
[32m+[m[32m    measured separation (m): 0.006000[m
[32m+[m[32m    object: ""[m
     sensor: camera_side_link[m
     sensor_mount_type: 0[m
     solver: crigroup/Daniilidis1999[m
[36m@@ -299,7 +300,7 @@[m [mVisualization Manager:[m
       Value: true[m
       Velocity_Scaling_Factor: 1[m
     - Class: rviz/Camera[m
[31m-      Enabled: true[m
[32m+[m[32m      Enabled: false[m
       Image Rendering: background and overlay[m
       Image Topic: /camera_side/color/image_raw[m
       Name: Camera[m
[36m@@ -307,8 +308,9 @@[m [mVisualization Manager:[m
       Queue Size: 2[m
       Transport Hint: raw[m
       Unreliable: false[m
[31m-      Value: true[m
[32m+[m[32m      Value: false[m
       Visibility:[m
[32m+[m[32m        "": true[m
         Grid: true[m
         MotionPlanning: true[m
         TF: true[m
[36m@@ -322,7 +324,7 @@[m [mVisualization Manager:[m
         camera_side_color_frame:[m
           Value: false[m
         camera_side_color_optical_frame:[m
[31m-          Value: false[m
[32m+[m[32m          Value: true[m
         camera_side_depth_frame:[m
           Value: false[m
         camera_side_depth_optical_frame:[m
[36m@@ -395,6 +397,48 @@[m [mVisualization Manager:[m
                                 {}[m
       Update Interval: 0[m
       Value: true[m
[32m+[m[32m    - Alpha: 1[m
[32m+[m[32m      Autocompute Intensity Bounds: true[m
[32m+[m[32m      Autocompute Value Bounds:[m
[32m+[m[32m        Max Value: 10[m
[32m+[m[32m        Min Value: -10[m
[32m+[m[32m        Value: true[m
[32m+[m[32m      Axis: Z[m
[32m+[m[32m      Channel Name: intensity[m
[32m+[m[32m      Class: rviz/PointCloud2[m
[32m+[m[32m      Color: 255; 255; 255[m
[32m+[m[32m      Color Transformer: ""[m
[32m+[m[32m      Decay Time: 0[m
[32m+[m[32m      Enabled: true[m
[32m+[m[32m      Invert Rainbow: false[m
[32m+[m[32m      Max Color: 255; 255; 255[m
[32m+[m[32m      Max Intensity: 4096[m
[32m+[m[32m      Min Color: 0; 0; 0[m
[32m+[m[32m      Min Intensity: 0[m
[32m+[m[32m      Name: PointCloud2[m
[32m+[m[32m      Position Transformer: ""[m
[32m+[m[32m      Queue Size: 10[m
[32m+[m[32m      Selectable: true[m
[32m+[m[32m      Size (Pixels): 3[m
[32m+[m[32m      Size (m): 0.009999999776482582[m
[32m+[m[32m      Style: Flat Squares[m
[32m+[m[32m      Topic: /camera_side/depth/color/points[m
[32m+[m[32m      Unreliable: false[m
[32m+[m[32m      Use Fixed Frame: true[m
[32m+[m[32m      Use rainbow: true[m
[32m+[m[32m      Value: true[m
[32m+[m[32m    - Class: rviz/Image[m
[32m+[m[32m      Enabled: true[m
[32m+[m[32m      Image Topic: /camera_side/color/image_raw[m
[32m+[m[32m      Max Value: 1[m
[32m+[m[32m      Median window: 5[m
[32m+[m[32m      Min Value: 0[m
[32m+[m[32m      Name: Image[m
[32m+[m[32m      Normalize Range: true[m
[32m+[m[32m      Queue Size: 2[m
[32m+[m[32m      Transport Hint: raw[m
[32m+[m[32m      Unreliable: false[m
[32m+[m[32m      Value: true[m
   Enabled: true[m
   Global Options:[m
     Background Color: 48; 48; 48[m
[36m@@ -411,7 +455,7 @@[m [mVisualization Manager:[m
   Views:[m
     Current:[m
       Class: rviz/XYOrbit[m
[31m-      Distance: 1.8889175653457642[m
[32m+[m[32m      Distance: 9.340887069702148[m
       Enable Stereo Rendering:[m
         Stereo Eye Separation: 0.05999999865889549[m
         Stereo Focal Distance: 1[m
[36m@@ -426,10 +470,10 @@[m [mVisualization Manager:[m
       Invert Z Axis: false[m
       Name: Current View[m
       Near Clip Distance: 0.009999999776482582[m
[31m-      Pitch: 0.059797029942274094[m
[32m+[m[32m      Pitch: -0.05020308867096901[m
       Target Frame: world[m
       Value: XYOrbit (rviz)[m
[31m-      Yaw: 1.2549426555633545[m
[32m+[m[32m      Yaw: 0.8999387621879578[m
     Saved: ~[m
 Window Geometry:[m
   Camera:[m
[36m@@ -438,18 +482,20 @@[m [mWindow Geometry:[m
     collapsed: false[m
   HandEyeCalibration:[m
     collapsed: false[m
[31m-  Height: 1416[m
[32m+[m[32m  Height: 1385[m
   Help:[m
     collapsed: false[m
   Hide Left Dock: false[m
   Hide Right Dock: false[m
[32m+[m[32m  Image:[m
[32m+[m[32m    collapsed: false[m
   MotionPlanning:[m
     collapsed: false[m
   MotionPlanning - Trajectory Slider:[m
     collapsed: false[m
[31m-  QMainWindow State: 000000ff00000000fd00000002000000000000036500000544fc0200000009fb000000100044006900730070006c00610079007301000000270000014e000000c900fffffffb0000000800480065006c00700000000342000000bb0000006e00fffffffb0000000a0056006900650077007300000003b0000000b0000000a400fffffffb0000000c00430061006d00650072006100000002ff000001610000000000000000fb0000001e004d006f00740069006f006e00200050006c0061006e006e0069006e00670100000374000001890000000000000000fb00000044004d006f00740069006f006e0050006c0061006e006e0069006e00670020002d0020005400720061006a006500630074006f0072007900200053006c00690064006500720000000000ffffffff0000004100fffffffb0000001c004d006f00740069006f006e0050006c0061006e006e0069006e0067010000017b000001c10000017d00fffffffb0000002400480061006e006400450079006500430061006c006900620072006100740069006f006e010000034200000229000001e200fffffffb0000000a0049006d006100670065000000046c000000ff000000000000000000000002000006540000027bfc0100000002fb0000000c00430061006d006500720061010000036b000006540000006900fffffffb0000000c00430061006d00650072006101000002bd00000702000000000000000000000654000002c300000001000000020000000100000002fc0000000100000002000000010000000a0054006f006f006c00730100000000ffffffff0000000000000000[m
[32m+[m[32m  QMainWindow State: 000000ff00000000fd0000000200000000000003650000050ffc020000000afb000000100044006900730070006c006100790073010000003d000000de000000c900fffffffb0000000800480065006c00700000000342000000bb0000006e00fffffffb0000000a0056006900650077007300000003b0000000b0000000a400fffffffb0000000c00430061006d00650072006100000002ff000001610000001600fffffffb0000001e004d006f00740069006f006e00200050006c0061006e006e0069006e00670100000374000001890000000000000000fb00000044004d006f00740069006f006e0050006c0061006e006e0069006e00670020002d0020005400720061006a006500630074006f0072007900200053006c00690064006500720000000000ffffffff0000004100fffffffb0000001c004d006f00740069006f006e0050006c0061006e006e0069006e00670100000121000001880000017d00fffffffb0000002400480061006e006400450079006500430061006c006900620072006100740069006f006e01000002af000001e2000001e200fffffffb0000000a0049006d006100670065000000046c000000ff0000000000000000fb0000000a0049006d0061006700650100000497000000b50000001600ffffff00000002000006540000027bfc0100000002fb0000000c00430061006d006500720061010000036b000006540000000000000000fb0000000c00430061006d00650072006101000002bd000007020000000000000000000006520000050f00000001000000020000000100000002fc0000000100000002000000010000000a0054006f006f006c00730100000000ffffffff0000000000000000[m
   Views:[m
     collapsed: false[m
[31m-  Width: 2495[m
[31m-  X: 65[m
[31m-  Y: 24[m
[32m+[m[32m  Width: 2493[m
[32m+[m[32m  X: 67[m
[32m+[m[32m  Y: 27[m
