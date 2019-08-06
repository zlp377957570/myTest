import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      // redirect:{name: 'HelloWorld'},
      name: 'HelloWorld',
      component: HelloWorld,
      children:[
        {
          path: '/',
          name: 'page0',
          component:() => import('@/components/page-list/page0.vue'),
          meta:{
            isLogin:false
          }
        },
        {
          path: '/page1',
          name: 'page1',
          component:() => import('@/components/page-list/page1.vue')
        },
        {
          path: '/page2',
          name: 'page2',
          component: () => import('@/components/page-list/page2.vue')
        },
        {
          path: '/page3',
          name: 'page3',
          component: () => import('@/components/page-list/page3.vue')
        },
        {
          path: '/page4',
          name: 'page4',
          component: () => import('@/components/page-list/page4.vue')
        },
        {
          path: '/page5',
          name: 'page5',
          component: () => import('@/components/page-list/page5.vue')
        },
        {
          path: '/page6',
          name: 'page6',
          component:() => import('@/components/page-list/page6.vue')
        },
        {
          path: '/carousel',
          name: 'carousel',
          component:() => import('@/components/page-list/carousel.vue')
        }   
      ]
    },
    {
      path: '/product_detail',
      name: 'product_detail',
      component:() => import('@/components/page-list/product_detail.vue'),
      children:[
        {
          path: '/review',
          name: 'review',
          component:() => import('@/components/page-list/review.vue')
        }        
      ]
    },
    // {
    //   path: "*",
    //   redirect: "/"
    // }
  ]
})
