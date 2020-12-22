cd /content
rm -r ./neural_renderer
git clone https://github.com/daniilidis-group/neural_renderer
cd /content/neural_renderer/
git checkout at_assert_fix
wget https://raw.githubusercontent.com/skoltechresearch/impersonator/master/thirdparty/neural_renderer/neural_renderer/__init__.py
mv __init__.py /content/neural_renderer/neural_renderer/__init__.py
wget https://raw.githubusercontent.com/skoltechresearch/impersonator/master/thirdparty/neural_renderer/neural_renderer/projection.py
mv projection.py /content/neural_renderer/neural_renderer/projection.py
wget https://raw.githubusercontent.com/skoltechresearch/impersonator/master/thirdparty/neural_renderer/neural_renderer/cuda/rasterize_cuda.cpp
mv rasterize_cuda.cpp /content/neural_renderer/neural_renderer/cuda/rasterize_cuda.cpp
wget https://raw.githubusercontent.com/skoltechresearch/impersonator/master/thirdparty/neural_renderer/neural_renderer/rasterize.py
mv rasterize.py /content/neural_renderer/neural_renderer/rasterize.py
python setup.py install

cd /content/impersonator/
wget -O assets/pretrains.zip https://1drv.ws/u/s!AjjUqiJZsj8whLNw4QyntCMsDKQjSg?e=L77Elv
cd assets
unzip pretrains.zip
cd ..
wget -O outputs/checkpoints.zip https://1drv.ws/u/s!AjjUqiJZsj8whLNyoEh67Uu0LlxquA?e=dkOnhQ
cd outputs
unzip checkpoints.zip
cd ..
wget -O assets/samples.zip https://1drv.ws/u/s!AjjUqiJZsj8whLNz4BqnSgqrVwAXoQ?e=bC86db
cd assets
unzip samples.zip
cd ..
cd /content/impersonator/
