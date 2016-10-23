<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}
                
                /*BOC to show category on Home page 10-06-2016*/
                $this->load->model('catalog/category');
                $this->load->model('tool/image');
                $data['categorys'] = array();
                $categorys = $this->model_catalog_category->getCategoriesForHomepage();
                if($categorys) {
                    foreach ($categorys as $category_info) {
                                if ($category_info['image']) {
                                        $image = $this->model_tool_image->resize($category_info['image'], 450, 300);
                                } else {
                                        $image = $this->model_tool_image->resize('placeholder.png', 450, 450);
                                }
                                $data['categorys'][] = array(
                                        'category_id'  => $category_info['category_id'],
                                        'thumb'       => $image,
                                        'name'        => $category_info['name'],
                                        'description' => utf8_substr(strip_tags(html_entity_decode($category_info['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
                                        'href'        => $this->url->link('product/category', 'path=' . $category_info['category_id'])
                                );
			}
                    }
                /*EOC to show category on Home page 10-06-2016*/
                        
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('common/home', $data));
	}
}