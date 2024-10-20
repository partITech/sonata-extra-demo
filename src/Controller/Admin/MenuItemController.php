<?php

namespace App\Controller\Admin;

use App\Entity\MenuItem;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Attribute\Route;

class MenuItemController extends AbstractController
{
    #[Route('/admin/menu-item/update-order', name: 'menu_item_update_order', methods: ['GET'])]
    public function updateOrderAction(Request $request): JsonResponse
    {
        $orderedIds = $request->request->get('orderedIds');
        if (empty($orderedIds) || !is_array($orderedIds)) {
            return new JsonResponse(['success' => false]);
        }

        // Update the position of each menu item in the database based on its order in $orderedIds
        foreach ($orderedIds as $position => $id) {
            // Assume you have a MenuItemRepository with a function to update position by id
            $this->getDoctrine()->getRepository(MenuItem::class)->updatePositionById($id, $position);
        }

        return new JsonResponse(['success' => true]);
    }
}
