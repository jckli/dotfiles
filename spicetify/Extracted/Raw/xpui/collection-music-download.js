"use strict";(("undefined"!=typeof self?self:global).webpackChunkopen=("undefined"!=typeof self?self:global).webpackChunkopen||[]).push([[4246],{44519:(e,r,n)=>{n.d(r,{z:()=>m});n(25750);var a=n(86440),i=n(86431),s=n(84966),t=n(81785),u=n(20148),c=n(16020),o=n(10236),l=n(4637);function m(e,r){switch(e.type){case c.p.ALBUM:return(0,l.jsx)(a.r,{uri:e.uri,name:e.name,images:e.images,sharingInfo:null,artists:e.artists,index:r},e.uri);case c.p.ARTIST:return(0,l.jsx)(i.I,{uri:e.uri,name:e.name,images:e.images,index:r},e.uri);case c.p.SHOW:return(0,l.jsx)(u._,{uri:e.uri,name:e.name,images:e.images,publisher:e.publisher,sharingInfo:null,mediaType:o.E.UNKNOWN,index:r},e.uri);case c.p.AUDIOBOOK:return(0,l.jsx)(s.c,{uri:e.uri,name:e.name,images:e.images,authorName:e.authorName,index:r},e.uri);case c.p.PLAYLIST:return(0,l.jsx)(t.Z,{uri:e.uri,name:e.name,images:e.images,description:"",authorName:e.creatorName,index:r},e.uri);default:return null}}},22490:(e,r,n)=>{n.r(r),n.d(r,{LibraryMusicDownloads:()=>f,default:()=>h});n(47408);var a=n(59496),i=n(33892),s=n(22056),t=n(44519),u=n(27293),c=n(1578),o=n(23351),l=n(37881),m=n(41489),d=n(4637),f=(0,a.memo)((function(){var e=(0,l.G)(),r=e.isLoading,n=e.hasError,a=e.items;return r||n?(0,d.jsx)(u.h,{hasError:n,errorMessage:s.ag.get("error.request-collection-music-downloads-failure")}):(0,d.jsxs)(d.Fragment,{children:[(0,d.jsx)(i.D,{as:"h1",variant:"canon",className:m.Z.header,children:s.ag.get("music_downloads")}),(0,d.jsx)(o.ZP,{value:"EntitiesGrid",children:(0,d.jsx)(c.T,{render:function(){return a.map((function(e,r){return(0,d.jsx)(o.ZP,{value:"card",index:r,children:(0,t.z)(e,r)},e.uri)}))}})})]})}));const h=f},37881:(e,r,n)=>{n.d(r,{G:()=>o});var a=n(88769),i=n(14942),s=n(26533),t=n.n(s),u=n(59496),c=n(6721);function o(){var e=(0,c.t)(),r=(0,u.useState)(!0),n=(0,i.Z)(r,2),s=n[0],o=n[1],l=(0,u.useState)(!1),m=(0,i.Z)(l,2),d=m[0],f=m[1],h=(0,u.useState)([]),p=(0,i.Z)(h,2),g=p[0],x=p[1];return(0,u.useEffect)((function(){var r=function(){var r=(0,a.Z)(t().mark((function r(){var n;return t().wrap((function(r){for(;;)switch(r.prev=r.next){case 0:return r.prev=0,r.next=3,e.getDownloads();case 3:n=r.sent,x(n),r.next=10;break;case 7:r.prev=7,r.t0=r.catch(0),f(!0);case 10:return r.prev=10,o(!1),r.finish(10);case 13:case"end":return r.stop()}}),r,null,[[0,7,10,13]])})));return function(){return r.apply(this,arguments)}}();r()}),[e]),{isLoading:s,hasError:d,items:g}}}}]);
//# sourceMappingURL=collection-music-download.js.map