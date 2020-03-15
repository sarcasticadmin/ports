# $FreeBSD$

PORTNAME=	salt-pex
PORTVERSION=	2019.2.3
CATEGORIES=	sysutils python
MASTER_SITES=	CHEESESHOP
DISTNAME=	salt-${PORTVERSION}
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	rob@sarcasticadmin.com
COMMENT=	Distributed remote execution and configuration management system \
		packaged into a self contained binary using pex

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=  ${PYTHON_PKGNAMEPREFIX}pex>=2.1.6:devel/py-pex@${PY_FLAVOR} \
                openssl>0:security/openssl \
                libzmq4>0:net/libzmq4
RUN_DEPENDS  =  openssl>0:security/openssl \
                libzmq4>0:net/libzmq4

USES=		cpe python:-3.7

CPE_VENDOR=	saltstack
CPE_PRODUCT=	salt
USE_PYTHON=	autoplist distutils
NO_ARCH=	yes

SUB_LIST+=	PYTHON_CMD=${PYTHON_CMD}

do-install:
	pex ${WRKSRC} -e salt.scripts:salt_call -o ${STAGEDIR}${PREFIX}/bin/salt-call

.include <bsd.port.mk>
