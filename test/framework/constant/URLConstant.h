


#import "UIDevice+Recognition.h"
//#import "MBProgressHUD.h"
//#import "Singleton.h"
#import "AFNetworking.h"
#import "GlobalSetting.h"
#import "FMDB.h"
#import "PathConstant.h"
#import "UIImageView+WebCache.h"
#import "requestManager.h"

 

//#define kUrlBase            @"http://192.168.199.210:8082/canlinghang"//jim
//#define BASE_URL            @"http://192.168.199.121:8080/canlinghang"// 水文



#define BASE_URL            @"http://115.28.213.180:8080/canlinghang"//阿里云服务器地址
//#define BASE_URL            @"http://192.168.199.205:8090/canlinghang"//ken
//#define BASE_URL            @"http://192.168.199.222:8080/canlinghang"//a妙


//#define BASE_URL            @"http://192.168.199.121:8080/canlinghang"
//#define BASE_URL            @"http://192.168.199.101:8080/canlinghang"

#define url_loading_new BASE_URL@"/api/loading/new"
#define url_loading_listRoute BASE_URL@"/api/loading/list/route"//路线列表
#define url_loading_changeRouteId BASE_URL@"/api/loading/changeRouteForNewLoading"//改变routeId
#define url_loading_create BASE_URL@"/api/loading/create"
#define url_loading_edit BASE_URL@"/api/loading/edit"
#define url_store_product_list BASE_URL@"/api/storeProduct/list"
#define url_loading_update BASE_URL@"/api/loading/update"
//装车-未审核列表
#define url_ldAuditList_list_unfinished BASE_URL@"/api/loading/list/audit/unfinished"
#define url_ldAuditList_list_finished BASE_URL@"/api/loading/list/audit/finished"
#define url_loading_show BASE_URL@"/api/loading/show"
#define url_loading_reject BASE_URL@"/api/loading/change/loadingStatus/reject"
#define url_loading_finish BASE_URL@"/api/loading/change/loadingStatus/finish"
#define url_loading_reaudit BASE_URL@"/api/loading/change/loadingStatus/reaudit"
#define url_ldSearchList_list BASE_URL@"/api/loading/list"


//订单模块
#define url_notLoadingOrder_list BASE_URL@"/api/order/unfinishedLoadingOrderPage"
#define url_alreadyLoadingOrder_list BASE_URL@"/api/order/finishedLoadingOrderPage"
#define url_custOrder_list BASE_URL@"/api/customerOrder/page"
#define url_order_new BASE_URL@"/api/order/new"
#define url_order_create BASE_URL@"/api/order/create"
#define url_order_update BASE_URL@"/api/order/update"
#define url_order_edit BASE_URL@"/api/order/edit"
#define url_order_show BASE_URL@"/api/order/show"
#define url_order_finished BASE_URL@"/api/order/changeOrderStatus/finished"
#define url_order_unfinished BASE_URL@"/api/order/changeOrderStatus/unfinished"
#define url_custOrder_new BASE_URL@"/api/customerOrder/new"
#define url_custOrder_create BASE_URL@"/api/customerOrder/create"
#define url_custOrder_show BASE_URL@"/api/customerOrder/show"
#define url_pdt_orderList_finished BASE_URL@"/api/order/orderStatus/finishedPage"
#define url_pdt_orderList_unfinished BASE_URL@"/api/order/orderStatus/unfinishedPage"


//卸货模块
#define url_discharge_list_uncount BASE_URL@"/api/unloading/list/uncount"
#define url_discharge_list_confirm BASE_URL@"/api/unloading/list/confirm"
#define url_discharge_list_unusual BASE_URL@"/api/unloading/list/unusual"
#define url_discharge_new BASE_URL@"/api/unloading/new"
#define url_discharge_create_box BASE_URL@"/api/unloading/create"
#define url_discharge_create_detail BASE_URL@"/api/unloading/create/detail"


//配送
#define url_deliverySearchList_list BASE_URL@"/api/delivery/search"
#define url_delivery_saveList BASE_URL@"/api/delivery/saveList"
#define url_delivery_allCustomerList BASE_URL@"/api/customer/all/list"
#define url_delivery_new BASE_URL@"/api/delivery/new"
#define url_delivery_print BASE_URL@"/api/delivery/show"
#define url_delivery_carStore BASE_URL@"/api/carStore/init"
#define url_delivery_return BASE_URL@"/api/carStore/return"

//监控与报警
#define url_monitor_csList BASE_URL@"/api/customerStore/unusual/list"
#define url_monitor_dcList BASE_URL@"/api/unloading/list/unusal"
#define url_monitor_delList BASE_URL@"/api/delivery/unusual/list"
#define url_monitor_csShow BASE_URL@"/api/customerStore/unusual/show"
#define url_monitor_dcShow BASE_URL@"/api/unloading/unusual/show"
#define url_monitor_delShow BASE_URL@"/api/delivery/unusual/show"

//运输单
#define url_transport_show BASE_URL@"/api/transport/show"
#define url_transport_list BASE_URL@"/api/transport/list"


//客户库存盘点
#define url_customerStore_list BASE_URL@"/api/customerStock/page"///api/customerStock/page
#define url_stcok_list BASE_URL@"/api/customerStock/searchPage"///api/customerStock/searchPage


//生产入库
#define url_prodStock_list BASE_URL@"/api/pinstock/list"
#define url_prodStock_show BASE_URL@"/api/pinstock/show"
#define url_prodStock_new BASE_URL@"/api/pinstock/new"
#define url_prodStock_create BASE_URL@"/api/pinstock/create"
#define url_prodStock_reject BASE_URL@"/api/pinstock/change/pinstockStatus/reject"
#define url_prodStock_finish BASE_URL@"/api/pinstock/change/pinstockStatus/finish"
#define url_prodStock_edit BASE_URL@"/api/pinstock/edit"
#define url_prodStock_update BASE_URL@"/api/pinstock/update"
#define url_prodStock_reaudit BASE_URL@"/api/pinstock/change/pinstockStatus/reaudit"


#define url_pdtMin_list BASE_URL@"/api/minstock/list"
#define url_pdtPin_list BASE_URL@"/api/pinstock/list"
#define url_pdtExg_list BASE_URL@"/api/storeExchange/list"
#define url_pdtGet_list BASE_URL@"/api/storeGet/list"


#define url_billUnconfirmList BASE_URL@"/api/settlement/unconfirmSettlementPage"
#define url_billConfirmedList BASE_URL@"/api/settlement/confirmSettlementPage"
#define url_bill_paymentTypeCash BASE_URL@"/api/settlement/paymentType/cash"
#define url_bill_create BASE_URL@"/api/settlement/create"
#define url_bill_show BASE_URL@"/api/settlement/show"
#define url_bill_cust BASE_URL@"/api/settlement/customerSettlementPage" 

#define url_bill_confirm BASE_URL@"/api/settlement/settlementStatus/confirmed" //确认结账
#define url_bill_apply BASE_URL@"/api/settlement/discountStatus/applied" //申请优惠
#define url_bill_delete BASE_URL@"/api/settlement/delete" //删除本单
#define url_bill_agree BASE_URL@"/api/settlement/discountStatus/agree" //确认优惠
#define url_bill_receivables BASE_URL@"/api/settlement/settlementStatus/confirmed" //确认收款
#define url_bill_approval BASE_URL@"/api/settlement/discountStatus/agree" //审批通过
#define url_bill_reject BASE_URL@"/api/settlement/discountStatus/reject" //驳回


#define url_delBillList_pay BASE_URL@"/api/transportPay/delivery/payPage"
#define url_delBillList_unpay BASE_URL@"/api/transportPay/delivery/unpayPage"
#define url_delBillList_delPay BASE_URL@"/api/transportPay/page"
#define url_delBillList_show BASE_URL@"/api/transportPay/show"
#define url_delBillList_audited BASE_URL@"/api/transportPay/audited"
#define url_delBillList_reaudit BASE_URL@"/api/transportPay/reaudit"
#define url_delBillList_reject BASE_URL@"/api/transportPay/reject"

#define url_cust_allCustomerList BASE_URL@"/api/customer/all/list"
#define url_custBillList_pay BASE_URL@"/api/delivery/deliverySettlementPage/settlement"
#define url_custBillList_unpay BASE_URL@"/api/delivery/deliverySettlementPage/unsettlement"
#define url_custBillList_bill BASE_URL@"/api/settlement/customerSettlementPage"

//storeStock工厂盘点-查询盘点单
#define url_factStock_createStoreStock BASE_URL@"/api/storeStock/create"
#define url_factStock_showStoreStock BASE_URL@"/api/storeStock/show"
#define url_factStock_newStoreStock BASE_URL@"/api/storeStock/new"
#define url_factStock_updateStoreStock BASE_URL@"/api/storeStock/update"
#define url_factStock_searchStoreStock BASE_URL@"/api/storeStock/page"
#define url_factStock_storeProduct_list BASE_URL@"/api/storeProduct/searchPage"
#define url_factStock_eidtStoreStock BASE_URL@"/api/storeStock/edit"
#define url_factStock_appHandSigned BASE_URL@"/api/storeStock/appHandSigned"
#define url_factStock_printHandSign BASE_URL@"/api/storeStock/printHandSign"















